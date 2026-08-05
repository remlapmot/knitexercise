install:
    R -e "devtools::install(vignettes = TRUE)"
docs:
    R -e "devtools::document()"
check: docs
    R -e "devtools::check()"
dev:
    R -e "pak::local_install_dev_deps()"
