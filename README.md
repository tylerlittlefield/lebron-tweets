
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lebron-tweets

<!-- badges: start -->

<!-- badges: end -->

This repository collects twitter data and stores it to my own personal
s3 bucket. More specifically, it…

  - Uses `rtweet` to search for tweets with *“lebron”* in the text.
  - Compares new tweets to tweets that I have already collected by
    filtering out status IDs that already exist.
  - Saves the dataset to a personal s3 bucket.
  - Does this daily using a cron job from `cronR`.

I have no real use case for this at the moment. I am more or less just
interested in setting up a job to collect data. I think of it as a kind
of template that I may come back to if there is any twitter data I’d
like to routinely collect.

``` r
library(dplyr)
library(aws.s3)
library(stringr)
library(tidyr)
library(emo)

df <- s3readRDS("lebron_tweets.rds", "tylerlittlefield")

df %>% 
  distinct(text) %>% 
  mutate(emojis = ji_extract_all(text)) %>% 
  unnest_longer(emojis) %>% 
  drop_na(emojis) %>% 
  count(emojis, sort = TRUE)
#> # A tibble: 776 x 2
#>    emojis     n
#>    <chr>  <int>
#>  1 😂      5445
#>  2 🤣      1543
#>  3 🔥      1118
#>  4 😭      1110
#>  5 🏀       813
#>  6 👍       464
#>  7 🤔       446
#>  8 👑       441
#>  9 🐐       397
#> 10 👀       377
#> # … with 766 more rows
```
