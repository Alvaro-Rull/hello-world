#EJERCICIOS GGPLOT

library(ggplot2)
#EJERCICO 1

#A
glimpse(df_mtcars)

ggplot(df_mtcars) + 
  geom_point(aes(x=wt,y=mpg))

#B

ggplot(df_mtcars) + 
  geom_point(aes(x=wt,y=mpg),colour = "red")

#C

ggplot(df_mtcars) + 
  geom_point(aes(x=wt,y=mpg,colour=disp))

#D

ggplot(df_mtcars) + 
  geom_point(aes(x=wt,y=mpg,size=disp))

#EJERCICIO 2

#2a

class(mtcars$cyl) #CLASE (DF,NUMERIC...)

#2b
df_mtcars %>% 
  distinct(cyl)

#2c
ggplot(mtcars) +
  geom_point(aes(x=cyl,y=mpg))

#2d

df_mtcars <- df_mtcars %>% 
  mutate(cyl=as.factor(cyl)) #QUITAR 5 y 7 cyl

ggplot(df_mtcars) +
  geom_point(aes(x=cyl,y=mpg))

#EJERCICIO EXTRA 1 (SERIE TEMPORAL SIEMPRE TIENE EN EL EJE X FECHAS)
#Con el dtaa frame economics haz una serie temporal de unemploy (líneas) y añade 
#una capa de columnas con los mismos datos  (geom_jitter en lugar de geom_point)

economics
df_economics <- data.frame(economics)

ggplot(df_economics) +
  geom_line(aes(x = date,y = unemploy)) + 
  geom_col(aes(x = date,y = unemploy),fill="darkblue") +
  labs(x="",y="Desempleo",
       title = "Evolución del desempleo",
       caption= "ggplot2")

#EJERCICO EXTRA 2 
#Haz un boxplot de Petal.Width por cada Species y pinta encima de todos los puntos
#correspondientes con (geom_jitter en lugar de geom_point)
iris

ggplot(iris,aes(y= Petal.Width,x=Species,fill=Species))+
  geom_boxplot()+
  geom_jitter()

#EJERCICIO 3

#3a
diamonds
glimpse(diamonds)

#3b
ggplot(diamonds,aes(x=carat,y=price))+
  geom_point() #(point y jitter es casi lo mismo)

#3c
ggplot(diamonds,aes(x=carat,y=price),size=0.5)+
  geom_point()

#3d
ggplot(diamonds)+
  geom_point(aes(x=carat,y=price),size=0.5,alpha=0.1)

#3e
ggplot(diamonds)+
geom_point(aes(x=carat,y=price,colour=clarity),size=0.5,alpha=0.4)

#EJERCICIO 4
library(readr)
read_csv("R/countries_of_the_world2.csv")
df_countries <- read_csv("R/countries_of_the_world2.csv")
df_countries
#4a

