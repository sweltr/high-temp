library(tidyverse)
library(htmltools)
library(R.utils)
library(fontawesome)

source_code <- function() {
    rm(list = ls(pattern = "tmp_"))
    tmp_in <- knitr::current_input(dir = FALSE)
    tmp_in <- xfun::with_ext(tmp_in, ".qmd")

    tmp_ldir <- normalizePath(".")
    tmp_rmd <- list.files(tmp_ldir, pattern = ".qmd")
    tmp_rmd <- stringr::str_subset(tmp_rmd, tmp_in)
    tmp_finf <- paste(tmp_ldir, tmp_rmd, sep = "/")
    tmp_ghub <- stringr::str_replace(tmp_finf, "^.*/", 
                                     "https://github.com/sweltr/high-temp/blob/main/")
    return(tmp_ghub)                                 
}


