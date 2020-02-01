#' Custom Knit function for RStudio
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
