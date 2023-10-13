# EJERCICIOS BLOQUE 3 DPLYR
library(dplyr)
library(readr)
#EJERCICIO 3 de 3.dplyr 

#1)
df_inventado %>% 
mutate(area=long*ancho)
#2)
df_inventado %>% 
  mutate(euros_por_cliente=euros/clientes)
#3)
sum(df_inventado$euros)/sum(df_inventado$clientes) #este mejor

df_inventado %>% 
summarise(sum(euros)/sum(clientes))
#4)
df_inventado %>% 
mutate(
  suma_resta_long=if_else(col %in% c("white","blue"),long - 5,long + 10))
#5)
df_inventado %>% 
  mutate(
    m2_para_clientes=(long*ancho)/clientes
  )

#EJERCICO 4 STARWARS
#1)
glimpse(starwars)
head(starwars)
starwars

#EJERCICIO 5 
EYEGENDER_df <- starwars %>% 
  distinct(eye_color, gender)

write.csv(EYEGENDER_df,"gender_Starwars.csv",na = "NA")

#EJERCICIO 6
starwars_filtrado <- na.omit(starwars)
starwars_filtrado2 <- starwars_filtrado %>% 
select(height,mass,hair_color,skin_color,eye_color,birth_year,sex,gender,homeworld,species)
write.csv(starwars_filtrado2,"starwars_filtrado.csv",na = "NA")

#EJERCICIO 7
#1
library(readr)
setwd("C:/Users/coke1/Desktop/1er CUATRI")
read_csv2("../1er CUATRI/HERRAMIENTAS DE PROGRAMACIÓN/R/volpre2019.csv") #READ_CSV2 PORQUE SALÍA PUNTO Y COMA
Merca_Madrid <- read_csv2("../1er CUATRI/HERRAMIENTAS DE PROGRAMACIÓN/R/volpre2019.csv")

#2
install.packages("janitor")
library(janitor)
Merca_madrid_limpio <- clean_names(Merca_Madrid)
Merca_madrid_limpio

#3 
nrow(Merca_madrid_limpio)
glimpse(Merca_madrid_limpio) #FILAS POR COLUMNAS

#4 
sum(is.na(Merca_madrid_limpio$fecha_desde)) #is.na encuentra los NA que hay 

#5
Merca_madrid_limpio2 <- Merca_madrid_limpio %>% 
  filter(!is.na(Merca_madrid_limpio$fecha_desde))

#6
Merca_madrid_limpio2 %>% 
  filter(desc_variedad_2 == "VACUNO") %>% 
  distinct(desc_origen) #DISTINCT SOLO PILLA LOS DIFERENTES VALORES DE ESA COLUMNA(SIN REPETIR)

#7
Merca_madrid_limpio2 %>% 
  distinct(desc_variedad_2) %>% 
  sample_n(4)

Merca_madrid_limpio2 %>% 
  filter(desc_variedad_2=="JUREL") %>% 
  select(fecha_desde,desc_origen) %>% 
  arrange(desc_origen) #PARA PONERLO EN ORDEN ALFABÉTICO

#EJERCICO 8 
storms
df_storms <- storms

#1
summary(df_storms)

#2
df_storms %>% 
  distinct(name) #NO ES LO MISMO QUE SELECT PORQ SOLO TE PONE LOS DISTINTOS VALORES EN NOMBRE [NO TODOS]

df_storms %>% 
  select(name)

df_name_storms <- df_storms %>% 
  distinct(name)

#3
df_storms %>% 
  distinct(status)

#EJERCICIO 9


  
