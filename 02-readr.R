########################
## Reading with readr ##
## Leonardo Hansa     ## 
## September 2021     ## 

# What is a csv file ------------------------------------------------------

library(readr)
iris_csv <- read_csv("../data/sesiones/iris.csv")
iris_csv <- read_csv("../R/iris.csv")

# Exercise.
# - How many columns are there on the tibble?
ncol(iris)
# - How many rows?
nrow(iris_csv)
# - What are the types of the columns? _Hint._ Use `class()`.
sapply(iris,class)


iris_csv <- read_csv2("../data/sesiones/iris2.csv") 

iris_tsv <- read_tsv("../data/sesiones/iris.tsv")

iris_nuevo <- read_delim(file = "../data/sesiones/iris.txt", delim = "|")

# Exercise. Read de file iris, with no extension.

read_csv("https://github.com/tidyverse/readr/raw/master/inst/extdata/mtcars.csv")

# Exercise. 
# - Check the classes of all the columns. 
# - ? iris; ? mtcars

read_csv("https://github.com/tidyverse/readr/raw/master/inst/extdata/mtcars.csv", col_types = "ninnnnnilii")
