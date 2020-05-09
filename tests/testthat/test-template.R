context("render the template")

test_that("rendering the template successfully
					produces an output document", {

	skip_on_cran()

	templatermd <- I(tempfile())
	rmarkdown::draft(file = templatermd,
									 template = "exercise_template",
									 package = "knitexercise",
									 create_dir = FALSE,
									 edit = FALSE)
	output_file <- I(tempfile())
  rmarkdown::render(input = templatermd,
  									output_file = output_file,
  									quiet = TRUE)
  expect_true(file.exists(output_file))
 }
)
