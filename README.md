
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

    #> # A tibble: 17,990 x 2
    #>    created_at          text                                                     
    #>    <dttm>              <chr>                                                    
    #>  1 2020-02-12 06:24:00 "@joeescalante504 @ryenarussillo So what if they have th…
    #>  2 2020-02-12 06:23:54 "Clippers are built with a bunch of LeBron Stopper and L…
    #>  3 2020-02-11 05:29:46 "Is something wrong with LeBron? Doesn’t like his body l…
    #>  4 2020-02-12 06:23:13 "All Star Lebron 7’s are releasing again and I need a pa…
    #>  5 2020-02-12 06:23:13 "@WorldWideWob @NBA So can we change the scenario or do …
    #>  6 2020-02-11 05:20:33 "Maybe if Book bitched as much as LeBron does he’d start…
    #>  7 2020-02-11 04:52:10 "Anything to help out LeBron huh"                        
    #>  8 2020-02-10 23:29:14 "@deadric53620105 @AyoItsDad @ElalaouiAdnan @TheHoopCent…
    #>  9 2020-02-11 23:44:10 "@23Tommy24 @emanuelcgodina @PrimeXavi68 There all great…
    #> 10 2020-02-12 06:23:10 "@mxhxbxl @d_majin2 @RealSkipBayless Lebron been carryin…
    #> # … with 17,980 more rows
