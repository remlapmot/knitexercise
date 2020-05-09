context("render the template")

test_that("rendering the template successfully
					produces an output document", {

	skip_on_cran()

	output_file <- I(tempfile())
	on.exit(unlink(output_file), add = TRUE)

	template_path <- system.file("rmarkdown",
															 "templates",
															 "exercise_template",
															 "skeleton",
															 "skeleton.Rmd",
															 package = "knitexercise")
	rmarkdown::render(input = template_path,
  									quiet = TRUE,
										output_file = output_file)

	expect_true(file.exists(output_file))
 }
)
