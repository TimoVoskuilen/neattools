## code for data

layout <- read_csv2("data-raw/example_layout.csv")
usethis::use_data(layout, overwrite = TRUE)
