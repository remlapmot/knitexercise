# knitexercise 0.4.4

* Fix `knit_exercise()` leaving the global chunk option `include` set to `FALSE` in the session after knitting a questions document, which caused subsequent documents knitted in the same session (including solutions documents) to have all their chunks excluded
* Fix `knit_exercise()` failing when given a relative input path containing a directory, e.g. `knit_exercise("exercises/sheet1.Rmd")`
* `knit_exercise()` now gives a helpful error message if `solutions:` is missing from the `params:` field of the YAML header or is not `TRUE`/`FALSE`
* The `encoding` argument of `knit_exercise()` now defaults to `"UTF-8"`, so the function can be called with just the input file
* The package tests now render in a temporary directory, check the rendered documents show/hide the solutions as appropriate, and use **testthat** edition 3

# knitexercise 0.4.3

* Bump **roxygen2** to version 8.0.0

# knitexercise 0.4.2

* Setting the parameter `solutions: FALSE` now adds _-questions_ at the end of the filename before the file extension

# knitexercise 0.4.1

* Bump version of **roxygen2** package used to generate package documentation

# knitexercise 0.4.0

* **knitexercise** now requires the minimum version of R to be R 4.0.0 (because a dependency **knitr**, **evaluate**, now has this requirement)

# knitexercise 0.3.0

* Bump version of **roxygen2** used to create the package documentation

# knitexercise 0.2.0

* Bump minimum required version of R to be 3.6.0

# knitexercise 0.1.0

* First version of package
