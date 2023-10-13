#ULTIMA CLASE HERRAMIENTAS 

class(iris[, c(1,2,3)])

resultado <- sapply(iris,class) #Aplica class a todos los elementos en IRIS (en este caso) S, apply
resultado

class(resultado)

lapply(iris, class)

list(iris,mtcars)

library(ggplot2)
P <- ggplot(iris)+
  geom_point(aes(Sepal.Length,Sepal.Width))
P

una_lista <- list(iris,P)
#lapply devuelve una lista

#Una lista de que?
#aplica la función a cada elemento de la colección que recibe

class(iris[[1]])
class(iris[[2]])
class(iris[[3]])
class(iris[[4]])
class(iris[[5]])

#3 formas de acceder a una columna de un df como vector
iris[[5]]
iris[["Sepal.Width"]]
iris$Sepal.Width

library(dplyr)
df1 <- tibble(col1=runif(3),col2=rnorm(3))
df2 <- tibble(col1=runif(17),col2=rnorm(17))

df1
df2

nrow(df1)
nrow(df2)

lista <- list(df1,df2)
lista
resultado_lapply <- lapply(lista,nrow)

class(resultado_lapply)

resultado_lapply[[1]]
resultado_lapply[[2]]

library(readr)
df_CO2017 <- read_csv("../R/CO_2017.csv")

#Ejercicio 1
#Crea una funcion que reciba como argumneto una ruta (que sera un fichero CO) y devuelva la media de 
# dato_co en cada mes 
library(dplyr)

funcion <- function(ruta){
  read_csv(ruta) %>%
    group_by(mes) %>% 
    summarise(media=mean(dato_co))
}

funcion("../R/CO_2018.csv")

#Ejercicio 2 
#Aplica esa funcion a todos los ficheros CO con lapply
setwd("../R/")
listado_de_rutas <- list(
  "../R/CO_2017.csv",
  "../R/CO_2018.csv",
  "../R/CO_2019.csv"
)

lapply(listado_de_rutas,funcion)
#00-exercise MAP traducidos
#Ejercicio 10. Para cada nombre, filtra todo el data frame para ese nombre y aplica
#la funcion summary

read_delim(file="babynames",delim='\t')
df_babynames <- read_delim(file="babynames",delim='\t')
  
nombres_random <- c("Mariyanna", "Lamiah", "Shandal",
                    "Rynda", "Kcee", "Camia",
                    "Isaiyah", "Barbare", "Braxon",
                    "Kailly")



filtrado <- function(nombre){
  df_babynames %>% 
    filter(name == nombre) %>% 
    summary() 
}
  
lapply(nombres_random,filtrado)

#Ejercicio 11. Calcula los 5 nombres de chico mas usado y los 5 nombres de chica mas usados. Crea
#una lista con 2 elementos; los 5 de chico y 5 de chica

df_babynames %>% 
  group_by(sex,name) %>% 
  summarise(n=sum(n)) %>% 
  group_by(sex) %>% 
  arrange(desc(n)) %>% 
  slice(1:5)

df_chicos <- df_babynames %>% 
  filter(sex=="M") %>% 
  group_by(name) %>% 
  summarise(conteo=sum(n)) %>% 
  arrange(desc(conteo)) #Conteo es contar el total historico

df_chicas <- df_babynames %>% 
  filter(sex=="F") %>% 
  group_by(name) %>% 
  summarise(conteo=sum(n)) %>% 
  arrange(desc(conteo))

lista_ej_11 <- list(df_chicas$name[1:5],df_chicos$name[1:5])


#Ejercicio 12

lista_ej_11 <- list(c()) #YA esta subido

#Ejercicio 13. Para cada nombre del ejercicio 12, cuenta cuantos años aparece (quiza lo puedas 
#hacer con dplyr, o no)



#Ejercicio 14. Para cada nombre crea un gráfico de evolución por año del número de bebes
#con ese nombre (eje x es el año)
library(ggplot2)

ggplot(df_babynames)+
  group_by()
  geom_line(aes(x=year,y=n))
  
