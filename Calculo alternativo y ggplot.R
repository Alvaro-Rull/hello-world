#HERRAMIENTAS 
mi_vector <- c(1,NA,4)
otro_vector <- c(10,NA,40)
mean(mi_vector)

is.na(mi_vector)
!is.na(mi_vector)
la_media <- mean(mi_vector,na.rm = TRUE)


#REEMPLAZO POR LA MEDIA AQUELLOS ELEMENTOS DE MI_VECTOR QUE SON NA
mi_vector[is.na(mi_vector)] <- la_media

mean(otro_vector,na.rm = TRUE)
#SI PONE FALSE, ES YA POR DEFECTO, POR ESO SE PONE TRUE

calculo_alternativo_de_la_media(otro_vector)
calculo_alternativo_de_la_media(un_vector_cualquiera)
mean(un_vector_cualquiera,na.rm=TRUE)

#CREAS UNA FUNCIÓN PARA CALCULAR MEDIAS CON NA (UNVECTORCUALQUIERA ES X,Y,Z PERO IGUAL QUE LA SIGUIENTE LÍNEA)
calculo_alternativo_de_la_media <- function(un_vector_cualquiera) {
  mean(un_vector_cualquiera,na.rm=TRUE)
}

calculo_alternativo_de_la_media(otro_vector)

#EJERCICIO : CREA UNA FUNCIÓN QUE RECIBA UNA PALABRA Y LA USE PARA FILTRAR FILAS EN IRIS POR LA COLUMNA SPECIES. 
#CALCULA LA MEDIA DE SEPAL.LENGHT DE LOS DATOS FILTRADOS.

library(dplyr)
glimpse(df_iris)
df_iris

filtra_datos <- function(palabra) {
  df_iris %>% 
    filter(species == palabra) %>% 
    summarise(mean(sepal_length)) 
}

filtra_datos("setosa")  
filtra_datos("virginica")

  
#EJERCICIO 2 : CREA UNA FUNCIÓN CUYO ARGUMENTO ES LA FUNCIÓN DE AGREGACIÓN QUE SE APLICA AL VECTOR UN_VECTOR

un_vector <- c(8,NA,9)

manolov <- function(p1) {
  p1(un_vector,na.rm = TRUE)
}
manolov(mean)
manolov(sum)


#EJERCICIO 3 : CREA UNA FUNCIÓN CUYOS ARGUMENTOS SON LA FUNCIÓN DE AGREGACIÓN QUE SE APLICA
# A ALGUN VECTOR, Y EL VECTOR SOBRE EL QUE SE APLICA  

funcion_de_funciones <- function(p1,cualquier_vector){
  p1(cualquier_vector,na.rm= TRUE) #PARA CUALQUIER VECTOR 
}
funcion_de_funciones(sum,otro_vector)
funcion_de_funciones(mean,otro_vector)

#GGPLO2
library(ggplot2)

ggplot(df_mtcars)+
  geom_point(aes(x=mpg,y=wt))

ggplot(df_mtcars)+
  geom_point(aes(x=mpg,y=wt,color=as.factor(am)))

ggplot(df_mtcars)+
  geom_point(aes(x=mpg,y=wt,shape=as.factor(am)))

df_mtcars %>% 
  filter(am==0) %>% 
  ggplot()+
  geom_point(aes(x=mpg,y=wt,shape=as.factor(am)))

ggplot(df_mtcars)+
  geom_point(aes(x=mpg,y=wt)) +
  facet_wrap(~am) #SEPARA EL GRAFICO EN FUNCIÓN DE AM'S (SUBPLOTS)

ggplot(df_mtcars)+
  geom_point(aes(x=mpg,y=wt)) +
  facet_grid(vs~am) #CREAR UNA MALLA CON 2 VARIABLES 


economics_long

ggplot(economics_long)+
  geom_line(aes(x=date,y=value))+
  facet_grid(variable~ .,scales="free_y") #CAMBIAR ESCALAS SEGÚN LA VARIABLE

install.packages("tidyr")
library(tidyr)

economics_largo <- economics %>% 
  pivot_longer(-date) 
