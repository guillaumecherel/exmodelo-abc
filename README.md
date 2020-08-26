# Usage:

To generate the html tutorial, run `make`.

The code generating the figure is in the directory `report/`. Use rstudio to open and run the Rmd file.

To reproduce the figures run R in the project root directory and

    library(rmarkdown)
    render("report/abc-report.Rmd", knit_root_dir=getwd())
