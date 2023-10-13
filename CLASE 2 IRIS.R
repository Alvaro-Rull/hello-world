#quiero traerme los dtos del iris.CSV a R
library(readr)
getwd()
#NECESARIA
ruta relativa <- "../R/iris.csv"

#Expansi?n para leer ficheros de texto plano, lops datos del ficjero iris.csv y convertirlos en df
library(readr)
ruta_relativa <- "C:/Users/coke1/Desktop/1er CUATRI/HERRAMIENTAS DE PROGRAMACI?N/R/iris.csv"
df_iris <- read.csv(ruta_relativa)
#otra forma m?s r?pida
library(readr)
read_csv("C:/Users/coke1/Desktop/1er CUATRI/HERRAMIENTAS DE PROGRAMACIÓN/R/iris.csv")
 #read_csv <- es mejor que con punto
df_iris <- read_csv("C:/Users/coke1/Desktop/1er CUATRI/HERRAMIENTAS DE PROGRAMACIÓN/R/iris.csv")

#Usa head() para ver las primeras filas
head(df_iris)
#Usa tail() para ver las ?ltimas filas
tail(df_iris)
#Usa names para ver los nombres de columnas (VECTOR)
names(df_iris)
#Usa class para ver la clase de cada columna
class(df_iris)
#Suma la longitud del s?palo y del p?talo de cada flor
sum(sepal_lenght+petal_lenght)
nrow(df_iris)
ncol(df_iris)
df_iris$petal_length + df_iris$sepal_length

2>1
1>1
#Ejercicio 1 
sum(iris$Sepal.Length < 5)
#EJ 2 en clase
sum(iris$Sepal.Length > 6)
sum(iris$Sepal.Length < 4)

TRUE & TRUE #(ES Y)
TRUE | TRUE #(ES O)

df_iris$sepal_length > 6 & df_iris$sepal_length < 4
df_iris$sepal_length > 6 | df_iris$sepal_length < 4


#LECTURA DE FICHEROS (MUY IMPORTANTE!!

setwd("C:/Users/coke1/Desktop/1er CUATRI")
read_csv("../1er CUATRI/HERRAMIENTAS DE PROGRAMACI?N/R/iris2.csv")
df_iris2 <- read_csv("../1er CUATRI/HERRAMIENTAS DE PROGRAMACI?N/R/iris2.csv")
ncol(df_iris2)

#APRENDIZAJE SI CSV SE ABRE MAL
read_delim("../1er CUATRI/HERRAMIENTAS DE PROGRAMACI?N/R/iris2.csv", delim = "$")
# 90% CSV EST?N SEPARADOS POR UNA COMA Y PUNTO DECIMAL
# 5% SEPARADO CON PUNTO Y COMA, Y COMA COMO DECIMAL
# 5% SEPARADO GEN?TICO (READ_DELIM)
# READ_PARQUET


# 00 EXERCISES (ARCHIVOS <- R <- DOC)
iris
iris$Species
#1
sum(df_iris$petal_length > 5.1)
#2
unique(iris$species[iris$sepal_width > 3.5 & iris$sepal_width < 4])

sum(df_iris$sepal_width > 3.5 & df_iris$sepal_width < 4) #NO ME SALE IGUAL
#3
table(iris$Species)
#4
mean(iris$Sepal.Width[iris$Sepal.Width<mean(iris$Sepal.Width)])
#5
median(iris$Petal.Width)

iris$Species=="Setosa"
median(iris$Petal.Width[iris$Species == "Setosa"])

df_iris$species=="Versicolor"
median(iris$Petal.Width[iris$species == "versicolor"])

#6 CUENTA CUANTAS FLORES TIENEN LONG PETALO MAYOR QUE EL MINIMO
# CUENTA CUANTAS FLORES TIENEN LONG MAYOR QIE EL MINIMO Y MENOR QUE EL MAX
# CUENTA CUANTAS FLORES TIENEN... Y NO SON VERSICOLOR
minimo <- min(df_iris)


#7


