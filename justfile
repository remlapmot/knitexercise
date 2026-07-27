install:
    devtools::install(vignettes = TRUE)
docs:
    devtools::document()
check: docs
    devtools::check()
