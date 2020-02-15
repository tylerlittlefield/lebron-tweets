
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

    #> # A tibble: 59,091 x 2
    #>    created_at          text                                                     
    #>    <dttm>              <chr>                                                    
    #>  1 2020-02-15 01:27:51 "@NBALAKERSBLOG Creo que todo LA quiere verlo con Lebron…
    #>  2 2020-02-15 01:27:01 "LeBron James Gazes At His Wife Of 6 Years Savannah Afte…
    #>  3 2020-02-15 01:26:54 "Need replies\n\nPG- Magic Johnson\nBU- Steph Curry\n\nS…
    #>  4 2020-02-15 01:26:50 "Jordan forces Lebron left and then people realize....\n…
    #>  5 2020-02-14 21:37:43 "@taylor_snarr Wow the gap from Harden and Giannis to Le…
    #>  6 2020-02-15 01:26:38 "Si acierto al menos 4 de 6 predicciones, pongo de perfi…
    #>  7 2020-02-15 01:26:36 "@HammyBrecks @ShoBusyLivin @ShannonSharpe What about al…
    #>  8 2020-02-15 01:26:36 "@ybukele Esperamos la foto con LeBron o Giannis"        
    #>  9 2020-02-15 01:26:34 "@Fast_BreakNBA Uma Jersey do Lebron no cavs, uma camisa…
    #> 10 2020-02-15 01:26:27 "@jrichardgoodman Closest thing Lebron vs kd?????"       
    #> # … with 59,081 more rows
