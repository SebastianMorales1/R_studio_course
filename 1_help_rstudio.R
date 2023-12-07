#To obtain help.

#This command gives is a menu with resources like manuals, references to learn about R and Rstudio.
help.start()

#Las siguientes acciones sirven para mostrarnos una breve descripcion acerca de las funciones o comandos descritos.
#The actions below show us a short description about functions and commands described.
?print
help("print")
?help

#Para pedir ayuda acerca de operadores matematicos, se usan comillas inversas.
#To look for help about math operatos, it is used back quotes.
help(`-`)
?`+`

# Muestra una lista de funciones que contenga esta cadena
#It is showed a object (function) list that belongs to a more general function.
apropos("class")
?class

#Se pueden ver ejemplos de uso de funciones con example()
#The command example() show us examples about a particular function
example("read.table")

#Se puede buscar información de un tema con ?? o tambien con help.search()
# We can search information about a topic with ?? or "help.search()"
??regression
help.search("regression")

#Se puede buscar información con help con library, así se tiene información más completa.
#We can search information with help using library, to obtain more complete information.
library(help="stats")

#Se pueden ver viñetas usando vignette() para saber un paquete en particular
#We can see vignettes with vignette() to know more about a particular package
vignette("grid")
#Si se quiere ver la lista de viñetas disponibles se usa solo vignette()
#If you want to see the list of available vignettes, just write vignette()
vignette()
#----------------
?vignette
example("vignette")
