# 5 ELEMENTOS DE PROGRAMACIÓN
#EJ 1 

library(dplyr)
library(ggplot2)

ejercicio1 <- function(x,a = 1){
  if (a>0) {
    df <- tibble(col1=x)
    df$col2 <- df$col1 * log(a*df$col1)
    
    P <- ggplot(df) +
      geom_point(aes(x=col1,y=col2))
    return(P)
  } else {
    print("El número debe ser positivo")
  }
}
ejercicio1(seq(0.1,1,by=0.001))
ejercicio1(seq(0.1,1,by=0.001),a=10)
ejercicio1(seq(0.1,1,by=0.001),a=-1)
ejercicio1(seq(1,2,3),a=-1)
