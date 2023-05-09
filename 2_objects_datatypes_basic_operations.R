
#a <- 3 + 7

#divsion entera, es decir, division sin residuos
#integer division, it means, division without residuals
7/3
8%%3

#Declaracion e impresion de variables
#Declaration and print of variables
mi_variable <- (180 / 6) - 15
mi_variable

#Declaracion de vector basico
#Declaration of a basic vector
y <- c(561, 1105, 1729, 2465, 2821)
print(y)

# Se declara vector con valor inicial y valor final.
# It is declared a vector with described initial and final values
1:100

# Resta de vectores, operacion vectorial sencilla
# subtraction of vectors, example of a simple vectorial operation.
c(1.1, 2.2, 3.3, 4.4) - c(1, 1, 1, 1)
#Si los dos vectores son de diferente tamaño, R repetirá la secuencia más pequeña múltiples veces.
c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) - c(1, 2)

#Para ver que objetos tienes, usa la funcion ls()
# To see which objects do you have, you can use the function ls()
ls()

#Para expresar caracteres se usan comillas
#To express characters we use quotes
"Hola mundo"

#Vector con carácteres
#Vector with characters
colores <- c("rojo", "azul", "verde", "azul", "rojo")
print("colores")
colores

#Valores con numeros complejos
#Values with complex numbers
complejo <- 2 + 1i

#para raiz cuadrada la funcion sqrt()
# To see the square root, we use sqrt()

#para valor absoluto la funcion abs()
# To see the absolute value, we use abs()

#operadores logicos
#Logic operators
mi_variable == 15 # Devuelve true
mi_variable == 16 # Devuelve false
# Como operadores lógicos están el AND lógico: `&` y `&&` y el OR lógico: `|` y `||`
# Other logic operatos are logic AND: `&` and `&&`; and the logic OR: `|` and `||`
# valores de orden (logic order values): <, >, <=, >=, ==, != .
?base:Sintax

#Ejemplos de uso de los dos puntos
#Examples of the use of colon
pi:6
6:pi

#presencia de valores faltantes NA (not available)
#Presence of NA values (not available)
length(complejo) <- 3
complejo

#Se puede ver los atributos de un comando o funcion con attributes()
# We can see the attributes of a particular function with attributes()
attributes()
attributes("mi_vector")
example("attributes")
?attributes


#Si el resultado es demasiado grande, r muestra valor "Inf" o "-Inf"
#If the result is quite large, R shows the result "Inf" or "-Inf"
2^1024 # It shows "Inf"

0/0
# En este caso, se imprime "NaN" (not a number)
# In this case, it prints "NaN"

# Es decir, cuando alguna expresión no tiene sentido como 0/0
# In other words, when any expression does not have sense like 0/0

fecha_primer_curso_R <- Sys.Date()
fecha_primer_curso_R

#funcion vector()
vector("numeric", length = 10)
#[1] 0 0 0 0 0 0 0 0 0 0
vector("character", length = 10)
#[1] "" "" "" "" "" "" "" "" "" ""
vector("logical", length = 10)
# [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

#Para guardar objetos de diferente clase se usan listas, con la funcion list()
#With the function list() we save objects of different class that use lists
list(0, "Hola", TRUE)
c(T, 19, 1+3i)
# Estos valores se representan en un objeto en el que todos pertenezcan
# These values are represented in an object where all belong to the same class
# Se llama coercion, para hacer que los objetos sean de una misma clase.
# This is called coertion, it functions to became the objects to the same

c <- vector("numeric", length = 5)
c
#Con la siguiente funcion el vector numerico "c" fue convertido en logical
# With this function the numerical vector "c" becomes a logical vector.
as.logical(c)
#se realiza una coerción explícita.
#This is called explicit coertion.
#as.numeric, as.character(), as.integer()

#La funcion class() sirve para saber a que clase pertenece un objeto.
# The function class() is used to know which kind of class is an object.
class(c)
class(as.logical(c))

#-----------------------------------------------------------

#MATRICES, MATRIX
m <- matrix(data=1:12,nrow=4,ncol=3)
m
#Para ver la dimension de la matriz usar dim
#To see the matrix dimension we use "dim"
dim(m)
#puedes crear matrices con las funciones cbind, rbind y as.matrix().
#We can create matrix with functions cbind, rbind and as.matrix().

x <- 5:8
y <- 12:15
#cbind junta vectores en forma de columna.
#cbind joints vector as columns
cbind(x,y)
#rbinf junta vectores en forma de fila
#rbind joints vector as rows
rbind(x,y)

#La funcion factor() sirve para representar factores.
#The function factor() serves to represent factors.
#se representan los valores como un factor
# the values are represented as a factor
factor(colores)

#dataframes
data.frame(llave=y, color=colores)
#tambien se puede usar read.table(), read.csv() 
# Also, we can use read.table() or read.csv()

#o data.matrix() para convertir dataframes en matrices
#or data.matrix() to convert dataframes to matrix
