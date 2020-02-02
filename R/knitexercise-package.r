#' knitexercise: knit exercise questions and solutions from the same R Markdown document
#'
#' By setting the `solutions` parameter in the YAML header of your R Markdown document
#' this package provides a custom knit function which sets the global chunk option
#' `include` from that value (i.e `FALSE` for your questions document and `TRUE`
#' for your solutions document).
#'
#' And you need to specify this function in the `knit:` field of your YAML header.
#' So your YAML header should look something like the following.
#' ```
#' title: My Title
#' params:
#'   solutions: FALSE
#' knit: knitexercise::knit_exercise
#' ```
#'
#' For your solutions document `-solutions` is added to the output document filename
#' before the file extension.
#'
#' There is a template R Markdown document which you can launch through the
#' File | New File | R Markdown... | From Template menu or as follows.
#' ```
#' rmarkdown::draft("my_exercise.Rmd", template = "exercise_template", package = "knitexercise")
#' ```
#'
#' @name knitexercise-package
#' @docType package
NULL
