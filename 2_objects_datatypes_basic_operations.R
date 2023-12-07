###Objects, datatypes and basic operations###

#a <- 3 + 7

#integer division, it means, division without residuals
7/3
8%%3

#Declaration and print of variables
mi_variable <- (180 / 6) - 15
mi_variable

#Declaration of a basic vector
y <- c(561, 1105, 1729, 2465, 2821)
print(y)

# It is declared a vector with described initial and final values
1:100

# subtraction of vectors, example of a simple vectorial operation.
c(1.1, 2.2, 3.3, 4.4) - c(1, 1, 1, 1)

#If two vectors have different sizes, R repeats the smaller squence multiple times.
c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) - c(1, 2)

# To see which objects do you have, you can use the function ls()
ls()

#To express characters we use quotes
"Hola mundo"

#Vector with characters
colores <- c("rojo", "azul", "verde", "azul", "rojo")
print("colores")
colores

#Values with complex numbers
complejo <- 2 + 1i


# To see the square root, we use sqrt()
# To see the absolute value, we use abs()

#Logic operators
mi_variable == 15 # Return true
mi_variable == 16 # Return false

# Other logic operatos are logic AND: `&` and `&&`; and the logic OR: `|` and `||`
# orden (logic order values): <, >, <=, >=, ==, != .
?base:Sintax

#Examples of the use of colon
pi:6
6:pi

#Presence of NA values (not available)
length(complejo) <- 3
complejo

# We can see the attributes of a particular function with attributes()
attributes()
attributes("mi_vector")
example("attributes")
?attributes

#If the result is quite large, R shows the result "Inf" or "-Inf"
2^1024 # It shows "Inf"

0/0
# In this case, it prints "NaN" (not a number)

# In other words, when any expression does not have sense like 0/0

fecha_primer_curso_R <- Sys.Date()
fecha_primer_curso_R

#function vector()
vector("numeric", length = 10)
#[1] 0 0 0 0 0 0 0 0 0 0
vector("character", length = 10)
#[1] "" "" "" "" "" "" "" "" "" ""
vector("logical", length = 10)
# [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE

#With the function list() we save objects of different class that use lists
list(0, "Hola", TRUE)
c(T, 19, 1+3i)
# These values are represented in an object where all belong to the same class
# This is called coertion, it functions to became the objects to the same

c <- vector("numeric", length = 5)
c

# With this function the numerical vector "c" becomes a logical vector.
as.logical(c)
#This is called explicit coertion.
#as.numeric, as.character(), as.integer()

# The function class() is used to know which kind of class is an object.
class(c)
class(as.logical(c))

#-----------------------------------------------------------

#MATRICES, MATRIX
m <- matrix(data=1:12,nrow=4,ncol=3)
m

#To see the matrix dimension we use "dim"
dim(m)

#We can create matrix with functions cbind, rbind and as.matrix().
x <- 5:8
y <- 12:15 #cbind joints vector as columns
cbind(x,y)

#rbind joints vector as rows
rbind(x,y)

#The function factor() serves to represent factors.
# the values are represented as a factor
factor(colores)

#dataframes
data.frame(llave=y, color=colores)
# Also, we can use read.table() or read.csv()

#or data.matrix() to convert dataframes to matrix
