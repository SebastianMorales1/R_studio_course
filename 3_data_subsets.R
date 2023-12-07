#Firstly, we create a vector.
mi_vector <- c(11:30)
print(mi_vector)

#With the square brackets, we can identify the value(s) of the specified coordinates.
#With the brackets, we can extract elements from the same class.
mi_vector[3]

#We can identify a sequence of values.
#The index in R starts from 1.
mi_vector[1:5]

# It does not have to be strictly sequential
mi_vector[c(4,6,13)]

# It does not have to have a particular order
mi_vector[c(6,13,4)]

#It shows elements from a list or dataframe that not necessarily are of the same class.
mi_vector[[3]]

#To take off elements in a function, we use negative numbers
mi_vector[-9:-15]

#$ extracts elements from a dataframe with literal names.
help("$")

#It can be used a logical vector, that shows the values that achieve the condition.
mi_vector[mi_vector > 15]

#It is created a logical vector of 10 values with a true-false sequence.
vector_logico <- rep(c(TRUE,FALSE),10)
#In this way, "mi_vector" shows the odd values, that were labeled as "false".
mi_vector[vector_logico]

#With the false-false-true sequence, "mi_vector" shows the index that are multiples of three.
mi_vector[c(FALSE,FALSE,TRUE)]

mi_vector > 20

mi_vector[(mi_vector > 20)]

#We create an array with sequence from 1 to 18 and dimension 3x3x2
mi_arreglo <- array(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18),dim=c(3,3,2))
print(mi_arreglo)
#We ask the coordenate (1,3,2) of the array "mi_arreglo"
mi_arreglo[1,3,2]
#With this command we ask a subset of the array "mi_arreglo"
mi_arreglo[1:2,1:2,1]

#We create a matrix using matrix()
mi_matriz <- matrix(1:9,3,3)
View(mi_matriz)

#Subsetting of matrix

#matrix[x,y] value of a particular coordenate
mi_matriz[2,2]

mi_matriz[2, ] #matrix[x, ] to show an entire row.
mi_matriz[2:3,]# Or several rows

mi_matriz[ ,2] #matrix[ ,y] to show an entire column
mi_matriz[ ,2:3] #Or several columns

#We can chose some particular rows or columns
mi_matriz[c(1,3),]
mi_matriz[,c(1,3)]

# It shows error if we ask for rows or columns that don't exist in the matrix.
mi_matriz[5, ]

#We can create a list with values with different classes.
carro <- list(color="rojo", nllantas=4, marca= "Renault", ncilindros=4)
#With "$" we can ask about a particular variable by its name.
carro$color
carro[c("ncilindros","nllantas")]
# As we said before, the double brackets can give us a variable from a list with variables of different classes.
#Like this list "carro" (car in spanish)
carro[["marca"]]
#we can call a variable by calling it partially using the option "exact=FALSE"
carro[["mar",exact=FALSE]]

#We create another list called "camioneta" (truck in spanish).
camioneta <- list(color="azul", nllantas=4, marca="BMW", ncilindros=6)

#Sometimes, a list can have smaller lists like "cochera"
cochera <- list(carro, camioneta)
print(cochera)
#We can call an specific element using the notation [[]]
cochera[[c(2, 1)]]

#We use a default dataframe called "cars"
print(cars)
#We ask for the variable "speed" from this dataframe
cars$speed
#If we want to know the values from the variable greater than 100, we can use this command.
cars$dist>100
#Then, we can identify the speed value where the dist value is greater than 100.
#And this can be useful for practical applications.
cars$speed[cars$dist>100]

#Subsetting de lista
#[], [[]], $
x <- list(hola1 = 1:10, hola2 = 0.005)
print(x)

x[1]
x[[1]]
x$hola1

x[2]
x["hola2"]
x[["hola2"]]

#We can show the coordenates 1 and 3 from the list "y".
y <- list(hello1=2:7, hello2=0.9, hello3="puente")
print(y[c(1,3)])

#lista[[]] can be useful as computed index.
name <- "hello3"
y[[name]]
y$name #It did not work with "$"
y$hello3

#Subsseting of nested elementos of a list.
z <- list(b = list(10,11,12), b = c(9.8,2.33))

#In both notations, it is chosen the first list "1", and from this first list its third element "3".
z[[c(1,3)]]
z[[1]][[3]]

#Similarly to the last case, it is chosen the second list and from it the first value.
z[[c(2,1)]]

#Partial matched
#IF R does not find the identical symbol, it chooses the most similar.
w <- list(mmmbmbmbm = 1:35)
w[["m"]]#it shows NULL
w$m #it shows the full list

#How to take off the NA values of a vector?
v <- c(321,53,NA,NA,NA,34)
faltantes <- is.na(v)
#vector without NA values :)
v[!faltantes] 

#We can generate with it a logical vetcor
# print(airquality), airquality is a large dataframe.
airquality[1:7, ]
no_faltantes <- complete.cases(airquality)
no_faltantes[1:7]
airquality[no_faltantes, ][1:5, ]

