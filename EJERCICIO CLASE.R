#EJERCICIO DE CLASE 1
#SALVA HERAS Y ÁLVARO RULL

library(dplyr)
library(readr)
setwd("C:/Users/coke1/Desktop/1er CUATRI/HERRAMIENTAS DE PROGRAMACIÓN/R/")
#1
df_credit <- read_delim("credit")
glimpse(df_credit)

df_credit %>% 
  group_by(Gender,Ethnicity) %>% 
  summarise(mean(Income,na.rm=TRUE))

#2
mean_income <- function(df_credit){
  df_credit <- read_delim("credit")
  df_credit %>% 
    group_by(Gender,Ethnicity) %>% 
    summarise(mean(Income,na.rm=TRUE))
}
mean_income("C:/Users/coke1/Desktop/1er CUATRI/HERRAMIENTAS DE PROGRAMACIÓN/R/credit")

#3
library(ggplot2)
  
ggplot(df_credit)+
  geom_col(aes(x=Gender,y=Income), fill = "lightblue")+
  facet_wrap(~Ethnicity)+ #TE LOS SEPARA POR ETHINICTY
  theme_light()+
  labs(title ="Comparativa deingresos")

#4
Grafico_mean <- function(path,color,title){
  df <-read_delim(path,delim='|')
  
  df_agregado2 <- df %>% 
    group_by(Gender,Ethnicity) %>% 
    summarise(mean(Income,na.rm=TRUE))
  
  ggplot(df_agregado2)+
    geom_col(aes(x=Gender,y=Income), fill = "lightblue")+
    facet_wrap(~Ethnicity)+ 
    theme_light()+
    labs(x="Gender",y="Income",title = "title")
    
}
Grafico_mean("C:/Users/coke1/Desktop/1er CUATRI/HERRAMIENTAS DE PROGRAMACIÓN/R/credit")
#REPASAR