###########################
## ggplot2 and dataviz   ##
## Leonardo Hansa        ## 
## September 2021        ## 

## First steps into dataviz ---------------------------

plot(sample(seq(0, 1, by = 0.01)))
plot(iris)

library(ggplot2)

P <- ggplot()
class(P)

P

# - Data
# - The axis
# - Aesthetics
# - Labelling
# - Distribution on the board
# - ...


# Scatter plots -----------------------------------------------------------
P <- ggplot(iris) #PARA que sea más fácil

P + 
  geom_point(aes(x = Sepal.Length, y = Sepal.Width)) # Es lo mismo que abajo pero con P 

ggplot(iris) + 
  geom_point(aes(x = Sepal.Length, y = Sepal.Width)) #AES es lo que hay dentro AESTHETICS


ggplot(iris) + 
  geom_point(aes(x = Sepal.Length, y = Sepal.Width, colour = Species))

# ggplot(iris) + 
#   geom_point(aes(x = Sepal.Length, y = Sepal.Width), colour = Species)
# Error in layer(data = data, mapping = mapping, stat = stat, geom = GeomPoint, : object 'Species' not found
```

ggplot(iris) + 
  geom_point(aes(x = Sepal.Length, y = Sepal.Width), #Elementos estéticos que dependen de los datos (ejes,colores,formas...)
             colour = "darkblue") #Si el color (elemento estético) no depende de los datos se pone fuera

ggplot(iris) + 
  geom_point(aes(x = Sepal.Length, y = Sepal.Width, colour = Species), size = 2)

# Column plots ------------------------------------------------------------
library(dplyr)

iris2plot <- iris %>% 
  group_by(Species) %>%  #Para cada especie 
  summarise(avg_petal_length = mean(Petal.Length), 
            avg_petal_width = mean(Petal.Width))

iris2plot

ggplot(iris2plot) + 
  geom_col(aes(x = Species, y = avg_petal_length))


ggplot(iris2plot) + 
  geom_col(aes(x = Species, y = avg_petal_length), 
           fill = "#F47C00")

ggplot(iris2plot) + 
  geom_col(aes(x = Species, y = avg_petal_length), 
           col = "#F47C00")


# Line plots --------------------------------------------------------------
glimpse(economics)

# Notice that you can include the aes() functions inside geom_line() or ggplot()
ggplot(economics, aes(date, unemploy)) + 
  geom_line()

# hmmm
ggplot(economics) + 
  geom_line(aes(date, unemploy)) + 
  geom_line(aes(date, uempmed))

scaled_economics <- economics %>% 
  select(date, unemploy, uempmed) %>% 
  mutate(unemploy = unemploy / max(unemploy), 
         uempmed = uempmed / max(uempmed))

ggplot(scaled_economics) + 
  geom_line(aes(date, unemploy)) + 
  geom_line(aes(date, uempmed))

ggplot(scaled_economics) + 
  geom_line(aes(date, unemploy),colour="blue") + 
  geom_line(aes(date, uempmed),colour="red")

glimpse(economics_long)

ggplot(economics_long) +
  geom_line(aes(x = date, y = value01))

ggplot(economics_long) +
  geom_line(aes(x = date, y = value01, group = variable))

ggplot(economics_long) +
  geom_line(aes(x = date, y = value01, colour = variable))

