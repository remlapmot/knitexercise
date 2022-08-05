#' Custom Knit function for RStudio
#'
#' This function adds `-solution` to the end of the filename before the file extension
#' of the output document from your R Markdown document when rendered by clicking the
#' Knit button in RStudio and when you have set `solutions: TRUE` in the `params:` field
#' of your YAML header.
#'
#' This function is used with the `knit:` field of the YAML header of an R Markdown file.
#' For example, if you want pdf output the YAML header would be as follows.
#' ```yaml
#' ---
#' title: My Title
#' params:
#'   solutions: TRUE
#' output: pdf_document
#' knit: knitexercise::knit_exercise
#' ---
#' ```
#'
#' This function also sets the global chunk option `include` to the value specified by
#' `solutions:`, i.e. set `solutions: FALSE` for your questions document and
#' `solutions: TRUE` for your solutions document.
#'
#' @seealso This function is modified from the following example by Yihui Xie
#' \url{https://bookdown.org/yihui/rmarkdown-cookbook/custom-knit.html}.
#'
#' @param inputFile The name of the R Markdown file to be rendered.
#'
#' @param encoding As per `rmarkdown::render_site()` this is ignored.
#' The encoding is always assumed to be UTF-8.
#'
#' @examples
#' \dontrun{
#' # To launch the R Markdown template run
#' rmarkdown::draft('exercise.Rmd', template = 'exercise_template', package = 'knitexercise')
#' }
#'
#' @export
knit_exercise <- function(inputFile, encoding) {
	solns <- rmarkdown::yaml_front_matter(inputFile)$params$solutions; if (solns) {
		rmarkdown::render(
			input       = inputFile,
			encoding    = encoding,
			output_file = paste0(substr(inputFile, 1, nchar(inputFile) - 4), '-solutions'))
	}
	else {
		knitr::opts_chunk$set(include = solns); rmarkdown::render(
			input       = inputFile,
			encoding    = encoding)
	}
}
