install:
    Rscript -e "devtools::install(vignettes = TRUE)"
docs:
    Rscript -e "devtools::document()"
check: docs
    Rscript -e "devtools::check()"
dev:
    Rscript -e "pak::local_install_dev_deps()"
