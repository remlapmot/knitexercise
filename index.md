# knitexercise: R package to knit questions and solutions documents from the same R Markdown document

This is a simple package which provides a custom knit function,
`knit_exercise`, to knit separate questions and answers output documents
from the same R Markdown file.

## Installation

You can install **knitexercise** as a binary package from r-universe
with

``` r
install.packages('knitexercise', repos = c('https://remlapmot.r-universe.dev', 'https://cloud.r-project.org'))
```

Or you can install the package from source from GitHub with:

``` r
if (!requireNamespace("remotes")) install.packages("remotes")
remotes::install_github("remlapmot/knitexercise")
```

## Usage

There is a template provided which you can launch through the *File \|
New File \| R Markdown… \| From Template* menu or with the following
code.

``` r
rmarkdown::draft("my_exercise.Rmd", template = "exercise_template", package = "knitexercise")
```
