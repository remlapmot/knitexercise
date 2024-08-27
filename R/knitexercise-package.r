#' knitexercise: Knit exercise questions and solutions from the same R Markdown document
#'
#' This package provides a custom knit function, `knit_exercise()`, which sets the global
#' chunk option `include`. This is controlled by setting the `solutions` parameter in
#' the YAML header of the R Markdown document.
#'
#' To generate your output document with questions set `solutions: FALSE`.
#' For your output document containing the solutions set `solutions: TRUE`.
#'
#' Your YAML header should look something like the following.
#' ```yaml
#' ---
#' title: My Title
#' author: My Name
#' params:
#'   solutions: FALSE
#' knit: knitexercise::knit_exercise
#' output: html_document
#' ---
#' ```
#'
#' For your solutions output document `-solutions` is added to the filename before
#' the file extension.
#'
#' There is a template R Markdown document which you can open through the
#' following menu in RStudio: *File | New File | R Markdown... | From Template*,
#' or with the following code.
#' ```r
#' rmarkdown::draft(
#'   "my_exercise.Rmd",
#'   template = "exercise_template",
#'   package = "knitexercise"
#' )
#' ```
#'
"_PACKAGE"
