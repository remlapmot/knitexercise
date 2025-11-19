# Custom Knit function for RStudio

This function adds `-questions`/`-solutions` to the end of the filename
before the file extension of the output document from your R Markdown
document when rendered by clicking the Knit button in RStudio and when
you have set `solutions: FALSE`/`solutions: TRUE` in the `params:` field
of your YAML header.

## Usage

``` r
knit_exercise(inputFile, encoding)
```

## Arguments

- inputFile:

  The name of the R Markdown file to be rendered.

- encoding:

  As per
  [`rmarkdown::render_site()`](https://pkgs.rstudio.com/rmarkdown/reference/render_site.html)
  this is ignored. The encoding is always assumed to be UTF-8.

## Details

This function is used with the `knit:` field of the YAML header of an R
Markdown file. For example, if you want pdf output the YAML header would
be as follows.

    ---
    title: My Title
    params:
      solutions: TRUE
    output: pdf_document
    knit: knitexercise::knit_exercise
    ---

This function also sets the global chunk option `include` to the value
specified by `solutions:`, i.e. set `solutions: FALSE` for your
questions document and `solutions: TRUE` for your solutions document.

## See also

This function is modified from the following example by Yihui Xie
<https://bookdown.org/yihui/rmarkdown-cookbook/custom-knit.html>.

## Examples

``` r
if (FALSE) { # \dontrun{
# To launch the R Markdown template run
rmarkdown::draft(
  'exercise.Rmd',
   template = 'exercise_template',
   package = 'knitexercise')
} # }
```
