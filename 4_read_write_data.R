#Unit 4: to read and write data.
#How to load datasets and save them in R.

#Types of tabular data
#Data organized in files using rows and columns.

#With R is very easy to add information from other programs.
#It can import text files, other statistic soft wares, spreadsheets, etc.
#It can specify the location (online/ offline) from an URL.

#Different variabes are separated with a special character, called "Delimitator".
#In other cases, variables are differentiated by their location in each line.

###Functions to read data in R.####
?read.table
#It is the most used function to read data in R.

#By omission, by default
#It ignores the lines with '#'

#To know the number of rows
#To know which type of variabe is each column.
#For example: << datos <- read.table("datos.txt") >>

#The most important parametres of the funcion "read.table"
#They are used if the file is too big, because they are used to improve the performance of the file reading.
read.table(file = , 
           header = ,
           sep = ,
           colClasses = , 
           #It is recommended to use this parametre.
           #If the type of variable of each colmun is explicit, the reading is more efficient.
           nrows = ,
           #It is recommended to use this parametre from the beginning
           comment.char = ,
           skip = ,
           stringsAsFactors = )
#Ejemplo "falso" usando "colClasses"
#inicial <- read.table(file = "cars.txt", nrows = 40)
#clases <- sapply(inicial, class)
#datos <- read.table("cars.txt", colClasses = clases)

#Existen comandos especializados de lecturas de datos derivados de read.table
#Con parámetros prestablecidos.

#No leer si los datos superan cantidad de memoria RAM.
#Usar < comment.char="" > si no hay líneas comentadas en el archivo.
#Tener en cuenta las siguientes cosas
    #tamaño de memoria
    #sistema multiusuario
    #aplicaciones en uso
    #sistema operativo
    #32 o 64 bits
#Es recomendable tener el doble de memoria RAM de los datos que cargas en el sistema.

read.csv()
read.csv2()
read.fortran
read.socket

source() #Para leer los datos de vuelta
dget()
load()
unserialize()



###Existen funciones para escribir datos en R.####
write.table()
#La funcion para escribir datos por defecto.
#Tambien tiene funciones especializadas como read.table.

#otros ejemplos de funciones de escribir datos en R.
writeLines
dump # Una manera muy simple de escribir datos
dput
save
serialize


###Practical exercise of the 4° section###
datos <- read.table("swirl_temp/inmigintnalpry.csv",header=TRUE, sep=",", 
                    fileEncoding = "latin1"
                    #"fileEnconding" is used to accept other symbols from other languages
                    #For instance, the "ñ" in Spanish.
                    )
View(datos) #To see the dataset.

datos_2 <- read.table("swirl_temp/inmigintnalpry.csv", header=TRUE, sep=",")
#RESULTS from dataset "datos_2"
#Error in make.names(col.names, unique = TRUE) : 
 # invalid multibyte string 2
#This is an error, because R does not understand the symbol "ñ" from the spanish word "año".

# read.cvs()
#If you use commas to indicate the decimal point in numbers.

# read.delim()
#If you have files that are delimitated by TAB without specify other options.

#If you are in Europe you can use commas to indicate decimal point in numbers.
#Using read.cvs2() or read.delim2()

#You can accelerate the data reading with the parametre "colClasses"
#Two important options are sep and header.
inicial <- read.table("swirl_temp/inmigintnalpry.csv",header=TRUE, sep=",", fileEncoding = "latin1", nrows = 100)
#Because the dataset is too large, we use "colClasses to select the first 100 rows of the file"
clases <- sapply(inicial, class)
#With the line above, we identify the class of the columns in the dataset.
print(clases)

datos <- read.table("swirl_temp/inmigintnalpry.csv",header=TRUE, sep=",", fileEncoding = "latin1", colClasses = clases)
#We use save() to save multiple objects in the same file.
save(datos, clases, file = "swirl_temp/datos_inmigrates.RData")

save(datos,file="C:/Documents and Settings/Mi Usuario/Mis Documentos/datos_inmigrates.RData")
#The file argument must be named explicitly.
#save(datos, file="C:/programación/Rstudio/R_studio_course/")
#It is my personal location of the file, nothing important.

#To delete objects, we use rm()
rm(datos,clases)

# ls() is used to watch the dataset and the functions the user has definde previously.
ls()
load("swirl_temp/datos_inmigrates.RData")

#To export (write) data, we use the function "write.table".
# And the name of the object as an argument.
#Normally, it is exported data frames and matrices.
write.table(datos, file="swirl_temp/datos.txt")
