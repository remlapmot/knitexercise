context("render the template")

test_that("rendering the template successfully
					produces an output document", {
  skip_on_cran()

  output_file <- I(tempfile())
  on.exit(unlink(output_file), add = TRUE)

  template_path <- system.file(
    "rmarkdown",
    "templates",
    "exercise_template",
    "skeleton",
    "skeleton.Rmd",
    package = "knitexercise"
  )
  rmarkdown::render(
    input = template_path,
    quiet = TRUE,
    output_file = output_file
  )

  expect_true(file.exists(output_file))
})

test_that("Test knitexercise::knit_exercise() works", {
  skip_on_cran()

  template_path <- system.file(
    "rmarkdown",
    "templates",
    "exercise_template",
    "skeleton",
    "skeleton.Rmd",
    package = "knitexercise"
  )

  tmpdir <- tempfile()
  dir.create(tmpdir)
  on.exit(unlink(tmpdir, recursive = TRUE), add = TRUE)
  input <- file.path(tmpdir, "skeleton.Rmd")
  file.copy(template_path, input)

  knit_exercise(input)

  expect_true(file.exists(file.path(tmpdir, "skeleton-questions.html")))
})

test_that("Test knitexercise::knit_exercise() works with params: solutions: TRUE in YAML header", {
  skip_on_cran()

  template_path <- system.file(
    "rmarkdown",
    "test-solutions.Rmd",
    package = "knitexercise"
  )

  tmpdir <- tempfile()
  dir.create(tmpdir)
  on.exit(unlink(tmpdir, recursive = TRUE), add = TRUE)
  input <- file.path(tmpdir, "test-solutions.Rmd")
  file.copy(template_path, input)

  knit_exercise(input)

  expect_true(file.exists(file.path(tmpdir, "test-solutions-solutions.html")))
})
