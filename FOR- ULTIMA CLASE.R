#ULTIMA CLASE 

1:10
print(1:10)

nueva_funcion <- function(x){
  x+1
}

#PARA CADA ELEMENTO DEL VECTORM 1 A 10 EJECUTA LA FUNCION <- NUEVA_FUNCION
lapply(1:10,nueva_funcion)

#BUCLE <- TROZO DE CODIGO QUE SE REPITE

#PARA CADA X QUE VAYA TOMANDO VALORES 1,2,3 ...
#APLICA LA NUEVA_FUNCION A X
for (x in 1:10) {
  print(nueva_funcion(x))
}


#FIJO EL DIRECTORIO DE TRABAJO EN UNA CARPETA

setwd("C:/Users/coke1/Desktop/1er CUATRI/HERRAMIENTAS DE PROGRAMACIÓN/R/IRIS CARPETA/")

#QUIERO GUARDAR EL DF IRIS EN 10 FICHEROS CSV DIFERENTES

library(readr)

write_csv(iris,
          "iris1.csv")
write_csv(iris,
          "iris2.csv")
write_csv(iris,
          "iris3.csv")

#Hacer mas facil (Y TE CREA 10 DF IRIS CSV)

for (x in 1:10) {
  write_csv(iris,paste0("IRIS CARPETA",x,"csv")) #EL PASTE ES PARA Q PONGA IRISXCSV EN CARPETA IRIS CARPETA
}



3%%2 #TE DEVUELVE EL RESTO (DIVISIÓN) "PARA SABER SI ES PAR"
10%%2
9%%2



a <- 13
#SI A ES MENOR QUE 10 DI HOLA
if(a<10){
  print("hola")
} else{
  print("adiós")
}
#SI A ES MAYOR DI ADIOS

#EJERCICIO SI X ES PAR GUARDA EL FICHERO Y SI NO, MUESTRA UN MENSAJE QUE DIGA QUE X NON ES PAR


for (x in 1:10) {
  write_csv(iris,paste0,".csv")
}


for (x in 1:10){
  if(x %% 2 == 0) {
    write_csv(iris, paste0("IRIS CARPETA", x,".csv"))
  } else{
    print("No PAR")
}}

