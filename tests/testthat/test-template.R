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

test_that("Test knitexercise::knit_exercise() works", {
						
						skip_on_cran()
	
						template_path <- system.file("rmarkdown",
																				 "templates",
																				 "exercise_template",
																				 "skeleton",
																				 "skeleton.Rmd",
																				 package = "knitexercise")

						output_file <- paste0(tools::file_path_sans_ext(template_path), "-questions.html")
						if (file.exists(output_file)) file.remove(output_file)
						knit_exercise(template_path)
						expect_true(file.exists(output_file))
					}
)
