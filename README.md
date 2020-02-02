# knitexercise

This is a simple package which provides a custom knit function, `knit_exercise`, to knit separate questions and answers output documents from the same R Markdown file.

## Installation

You can install the package from GitHub with:
``` r
# Uncomment the next line if you don't have the remotes package installed.
# install.packages("remotes")
remotes::install_github("remlapmot/knitexercise")
```
To update the package, simply run that command again.

## Usage
There is a template provided which you can launch through the 
*File | New File | R Markdown... | From Template* menu or with the following code.
``` r
rmarkdown::draft("my_exercise.Rmd", template = "exercise_template", package = "knitexercise")
```

## Author
Tom Palmer
