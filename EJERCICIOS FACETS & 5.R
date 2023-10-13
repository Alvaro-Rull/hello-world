#FACETS
install.packages("fivethirtyeight")
library(fivethirtyeight)
df_biopics <- biopics
glimpse(df_biopics)
#EJ 1.
library(ggplot2)
library(dplyr)
df_biopics %>% 
  select(year_release,subject_sex) %>% 
  group_by(year_release,subject_sex) %>% 
  mutate(sum=n()) %>% 
  ggplot()+
  geom_line(aes(x=year_release,y=sum))+
  facet_grid(subject_sex~.,scales = "free_y")

#EJ 2
df_biopics %>% 
  group_by(subject_sex,country) %>% 
  select(country,subject_sex) %>% 
  mutate(sum=n()) %>% 
  ggplot()+
  geom_col(aes(x=subject_sex,y=sum))+
  facet_wrap(country~.,scales="free_y")

#EJERCICIO 5 (ELEMENTOS DE PROGRAMAIÓN PAG9)

#EJERCICIO 1 

mi_funcion <- function(x,a=1){
  df_mi_funcion <- tibble(col1=x)
  df_mi_funcion <- df_mi_funcion %>% 
    mutate(col2=col1*log(a*col1))
  
  ggplot(df_mi_funcion)+
    geom_point(aes(x=col1,y=col2))
}
