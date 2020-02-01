#' Custom Knit function for RStudio
#'
#' This function adds `-solution` to the end of the filename of the output document
#' from your R Markdown document when rendered by clicking the Knit button in RStudio
#' and when you have set `solution: TRUE` in the `params:` field of your YAML header.
#'
#' This function is used with the `knit:` field of the YAML header of an R Markdown file.
#' For example, if you wanted pdf output the YAML header would be as follows.
#' ```
#' params:
#'   solutions: TRUE
#' output: pdf_document
#' knit: tpfun::knit_solutions
#' ```
#' You will additionally need to define a setup chunk that sets
#' ````
#' ```{r setup, include=FALSE, warning=FALSE, results=FALSE}
#' knitr::opts_chunk$set(include = params$solutions)
#' ```
#' Or use the provided template
#' `rmarkdown::draft("my_exercise.Rmd", template = "solns_template", package = "tpfun")`.
#'
#' @seealso This function is modified from the example given by Yihui Xie here
#' \url{https://bookdown.org/yihui/rmarkdown-cookbook/custom-knit.html}.
#'
#' @param inputFile The name of the R Markdown file to be rendered.
#'
#' @param encoding As per `rmarkdown::render_site()` this is Ignored.
#' The encoding is always assumed to be UTF-8.
#'
#' @export
knit_solutions <- function(inputFile, encoding) {
	if (rmarkdown::yaml_front_matter(inputFile)$params$solutions) {
		rmarkdown::render(
			input       = inputFile,
			encoding    = encoding,
			output_file = paste0(substr(inputFile, 1, nchar(inputFile) - 4), '-solutions'))
	}
	else {
		rmarkdown::render(
			input       = inputFile,
			encoding    = encoding)
	}
}
