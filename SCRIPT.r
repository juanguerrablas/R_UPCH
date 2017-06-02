setwd("G:/Temporal/0-datos")

dir(pattern = "\\.csv$")

files <- list.files(pattern = "\\.dbf$")


#dolar, final de la linea, filtrar solo csv,lista de archivos
# ordenan diferente

dir(pattern = ".csv")

# llamando los datos de una manera ordenada

files = paste("data",1:32,".csv",sep = "")# conjunto sobre el cual
# actua el iterador

for (i in files){
  print(i)# linea de progreso
  read.csv(i)
}

# tenemos una lista ahora necesitamos ordenar mediante una matriz
# vamos a crear una lista y llanamos con los datos

output=list() # crear lista vacia
for (i in files){
  print(i)# linea de progreso
  output[[i]]=read.csv(i,row.names = 1)
}

# row.names 
str(output)
head(output[[1]])# primer elemento de la lista
names(output[[1]])

head(output[[2]])
names(output[[2]])

# unir con data frame
# lapaly aply en listas, aplica una funcion sobre un alista
a=lapply(X=output, FUN=names)
sapply(X=output, FUN=names)
output

# nombre l1,l2,l3 es un error, necesitamos cambiarlo

names(output[[1]])=c("Paita","Chicama","Callao")
# al hacer el cambio en el script se registro


# merge, 

merge(output[[1]],output[[2]])  # combinar dos data frame( interseccion)

merge(output[[1]],output[[2]],all=TRUE) # combinar e primeros en un data frame

# 1. COMBINAR TODOS LOS 32  2n un  DATAFRAME


# lt = list(lt1, lt2, lt3, ...)
# if your data is very big, this may run you out of memory


files <-output
dataMerge <- data.frame()
for(f in files){ 
  dataMerge <- merge(dataMerge, files, all=T)
}

files <- output
dataMerge <- data.frame()
for(f in files){ 
  ReadInMerge <- read.csv(file=f, header=T, na.strings="NULL")
  dataMerge <- merge(dataMerge, ReadInMerge, 
                     by=c("Paita", "Chicama", "Callao"), all=T)
}


# 2. DATA 1 MUTREO 1, 2, MUETREO 2, MUESTRE 3
# VALOR 1, COLUMNAS 1,2,3,4,5,6,7,8,9...32
# TERMINAR LE PREPROCESAMIENTO, POST PPROCESAMIENTO
# CREAR CUENTA DE GITHUB, almacenamiento gratis, MANDAR LA TAREA







