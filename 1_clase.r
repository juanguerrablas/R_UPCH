
# 1 CLASE,VECTORES 17APRIL 2017 


 
ls() # lista de objetos
character(0)

# vectores; numerico, logico, caracter
# vector de longitud 0

#Crea un vector numérico de 3 elementos
c(1,2,3)

# Crea un vector lógico de 5 elementos
c(T,F,T,T,F)

# Crea un vector de 4 cadenas de caracteres
 
c("anchoveta","jurel","perico","merlusa")	


# CREANDO EL NOMBRE DEL OBJETO
miprimervector=1:5
miprimervector
ls()

x="miprimervector"
typeof(x)
typeof("miprimervector")

peces=c("anchoveta","jurel","perico","merlusa")	
peces

names # para preguntar los nombres
names(miprimervector)
miprimervector=1:5
names(miprimervector)=c("a","b","c","d","e")  # para darle nombres
miprimervector[4] # indexacion posicional, indexar el vector en funcion de la posicion.

#Extracción de elementos de un vector, 

# []posicion de un numero
x<-c(18,11,12,10,7,6,17) 
x[c(1,3,6)] 
# EXCLUSION DE POSICION  NUMERO
x[-3] 
x[-c(1,2)] 


