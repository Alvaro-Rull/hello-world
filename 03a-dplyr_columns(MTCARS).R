###########################
## data.frames and dplyr ##
## Leonardo Hansa        ## 
## September 2021        ## 

install.packages("dplyr")
library(dplyr)
library(readr)
read_csv("mtcars.csv")

df_mtcars <- read_csv("mtcars.csv")
head(df_mtcars)

df_mtcars %>% 
  select(mpg) 
mutate(mpg_log = log(mpg))

df_mtcars %>% 
  mutate(mpg_log = log(mpg))

df_mtcars <- df_mtcars %>% 
  mutate(
    mpg2=log(mpg),
    disp2=disp - 1)

#voy a crear una columna que me diga si el coche es de cambio automático o manual
df_mtcars %>% 
  select(am) %>% #PARA CREAR OTRA COLUMNA ( %>% )!!!!!!! Select es para q en la consola te salga solo esa 
  mutate(
    cambio = if_else(am == 0,"automático","manual") 
  ) #Funcion SI en Excel

df_mtcars %>% #Praa hacer de otra manera 
  select(am) %>% 
  mutate(
    am = am + 1,
    cambio = if_else(am == 1,"automático","manual")
  )

#Columna nueva que sea: 
# cyl == 4 - bajo
# cyl == 6 - medio
#cyl == 7 - alto

df_mtcars %>% 
  select(cyl) %>% 
  mutate(columna_nueva = if_else(cyl==4, "bajo",
                                 if_else(cyl==6, "medio",
                                         "alto")))

df_mtcars %>%
  select(cyl) %>% 
  mutate(columna_nueva = case_when(
    cyl
  ) #otra forma
  
  # %>% <- PIPE (CTRL + SHIFT + M)
  df_mtcars %>% glimpse()
  
  #RESUMEN DE CADA COLUMNA
  summary(df_mtcars) 
  df_mtcars %>% summary() #LO MISMO
  
  #TRABAJAR CON SOLO UNA COLUMNA
  df_mtcars %>% #TOMAS EL DATA FRAME Y SELECCIONAS LA COL
    select(wt)
  df_mtcars$wt #LO MISMO PERO TE DA UN VECTOR EN VEZ DE UNA TABLA CON COLUMNAS
  
  # PASAR DE TONELADAS A KILOS (MUTATE ES TRANSFORMAR)
  df_mtcars %>% 
    mutate(wt = wt * 1000)
  
  # PASAR A KG Y DE SOLO UNA COLUMNA
  df_mtcars %>% 
    mutate(wtkilos = wt * 1000) %>% 
    select(wt)
  
  #PARA QUE SALGAN TONELADAS Y KILOS
  df_mtcars %>% 
    mutate(wtkilos = wt * 1000) %>% 
    select(wt,wtkilos)
  
  #PARA BORRAR UNA COLUMNA QUE HAS PUESTO O NO
  df_mtcars$wt_kilos <- NULL #(NO HE CREADO LA COLUMNA POR ESO NO LA BORRA)
  
  
  # --------------------------------------------------
  
  
  
  #EJERCICIOS 3 DPLYR
  
  #Ejercicio 2 
  df_mtcars %>% 
    mutate(as.integer(drat)) #REDONDEAR (AS ENTERO)
  
  
  
  df_mtcars <- df_mtcars %>% 
    mutate(wt = wt * 1000)
  
  df_mtcars %>% 
    mutate(wt = wt / 1000) %>% 
    select(wt)
  
  mtcars %>% 
    mutate(vs = vs + 1) %>% 
    select(vs)
  
  
  class(df_mtcars$vs)
  
  df_mtcars %>% 
    mutate(vs_aux = if_else(vs == 0, "V-shaped", "straight")) %>% 
    select(vs, vs_aux)
  
  
  # Simulations -------------------------------------------------------------
  
  runif(10)
  set.seed(1234) #para que cada vez que hagas runif sea el mismo (ejecutar esa funcion, antes de ejecutar la generación de num aleatorios)
  runif(10) #Random y uniforma R UNIF
  
  set.seed(1234)
  results <- runif(10)
  
  library(dplyr)
  if_else(results < 0.5, "tails", "heads")
  
  
  # Creating a data frame ---------------------------------------------------
  
  number_of_stores <- 20
  
  indices <- 1:number_of_stores # Index: 1, 2, 3, 4, ..., 20
  
  set.seed(2718)
  
  length_sim <- rnorm(number_of_stores, mean = 7, sd = 1.5)
  width_sim <- rnorm(number_of_stores, mean = 10, sd = 2.1)
  
  # For the customers, we assume that the average will be 50. 
  # You'll learn what a Poisson distribution is later on
  customers_daily <- rpois(number_of_stores, lambda = 50)
  
  income_daily <- rnorm(number_of_stores, mean = 2000, sd = 100)
  
  colors <- sample(c("green", "blue", "red", "white"), 
                   size = number_of_stores,
                   replace = TRUE)
  
  
  df_inventado <- tibble(
    ind = indices, 
    long = length_sim, 
    ancho = width_sim, 
    clientes = customers_daily, 
    euros = income_daily, 
    col = colors
  )
  
  glimpse(df_inventado) #GLIMPSE VISUALIZA LOS DF

  #UN NA ES UN VALOR FALTAMTE Y NO SE PUEDE OPERAR MATEMATICAMENTE CON ÉL
  NA +1
  
  mean(c(4,5,6))
mean(c(NA,5,6))  

vector_con_na <- c(NA,5,6) #
if_else(is.na(vector_con_na),
        5.5,
        vector_con_na)
