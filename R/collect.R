suppressPackageStartupMessages({
  library(dplyr)
  library(aws.s3)
  library(glue)
  library(rtweet)
})

df_old_tweets <- s3readRDS(
  object = "lebron_tweets.rds",
  bucket = "tylerlittlefield"
)

df_new_tweets <- search_tweets(
  q = "lebron",
  n = 18000, 
  include_rts = FALSE, 
  retryonratelimit = TRUE, 
  verbose = FALSE, 
  token = readRDS(".rtweet_token2.rds")
)

df_new_tweets %>% 
  filter(!status_id %in% df_old_tweets$status_id) %>% 
  { cat(glue("[{Sys.Date()}] Collecting {nrow(.)} new tweets...\n\n")); . } %>%
  bind_rows(df_old_tweets) %>% 
  s3saveRDS(
    object = "lebron_tweets.rds", 
    bucket = "tylerlittlefield",
    multipart = TRUE
  )

# cronR::cron_add(
#   command = "cd /home/tyler/dev/lebron-tweets && /usr/bin/Rscript 'R/collect.R' >> 'R/collect.log' 2>&1",
#   frequency = "daily",
#   at = "9PM",
#   id = "Lebron Tweets",
#   tags = "#lebron, #twitter, #data",
#   description = "Collects twitter data with 'lebron' in text, everyday at 9PM."
# )
