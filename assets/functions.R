#library(tidyverse)
#library(htmltools)
#library(R.utils)

source_code <- function() {
    rm(list = ls(pattern = "tmp_"))
    tmp_ldir <-  normalizePath(".")
    tmp_rmd <- list.files(tmp_ldir, pattern = ".Rmd")
    tmp_finf <-paste(tmp_ldir, tmp_rmd, sep = "/")
    tmp_ghub <- stringr::str_replace(tmp_finf, 
                                 "^.*STRI-MCGILL-NEO/2022", 
                                 "https://github.com/stri-mcgill-neo/2022/blob/main")
    return(tmp_ghub)                                 
}

clipboard_button <- function() {
    htmltools::tagList(
      xaringanExtra::use_clipboard(
        button_text = "<i class=\"fa fa-clone fa-2x\" style=\"color: #004276\"></i>",
        success_text = "<i class=\"fa fa-check fa-2x\" style=\"color: #90BE6D\"></i>",
        error_text = "<i class=\"fa fa-times fa-2x\" style=\"color: #F94144\"></i>"
      ),
      rmarkdown::html_dependency_font_awesome()
    )
}

