#Unit 4: to read and write data.
#How to load datasets and save them in R.

#Types of tabular data
#Data organized in files using rows and columns.

#With R is very easy to add information from other programs.
#It can import text files, other statistic soft wares, spreadsheets, etc.
#It can specify the location (online/ offline) from an URL.

#Different variabes are separated with a special character, callerd "Delimitator".

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


###Existen funcines para escribir datos en R.####
write.table()
#La funcion para escribir datos por defecto.
#Tambien tiene funciones especializadas como read.table.

#otros ejemplos de funciones de escribir datos en R.
writeLines
dump # Una manera muy simple de escribir datos
dput
save
serialize


####Ejercicio practico de unidad 4####
datos <- read.table("swirl_temp/inmigintnalpry.csv",header=TRUE, sep=",", 
                    fileEncoding = "latin1"
                    #Se usa para abarcar mas simbolos que no usan otros idiomas
                    #Por ejemplo, la "ñ"
                    )
View(datos) #Para ver la base de datos

datos_2 <- read.table("swirl_temp/inmigintnalpry.csv", header=TRUE, sep=",")
#RESULTADO de "datos_2"
#Error in make.names(col.names, unique = TRUE) : 
 # invalid multibyte string 2

# read.cvs2() y read.delim2()
# Si usas comas para indicar punto decimal en los números.

#Agilizar la lectura de datos con el parametro "colClasses"
inicial <- read.table("swirl_temp/inmigintnalpry.csv",header=TRUE, sep=",", fileEncoding = "latin1", nrows = 100)
clases <- sapply(inicial, class)
print(clases)
datos <- read.table("swirl_temp/inmigintnalpry.csv",header=TRUE, sep=",", fileEncoding = "latin1", colClasses = clases)
#Se usa save() para guardar objetos.
save(datos, clases, file = "swirl_temp/datos_inmigrates.RData")
# El argumento file debe ser explicitamente nombrado.
save(datos,file="C:/Documents and Settings/Mi Usuario/Mis Documentos/datos_inmigrates.RData")

#Para borrar objetos, se usa rm()
rm(datos,clases)
#Se usa ls() para ver que conjunto de datos y funciones el usuario ha definido.
ls()
load("swirl_temp/datos_inmigrates.RData")

#Para exportar (escribir) datos se usa la funcion "write.table"
#Generalmente se exportan data frames y matrices.
write.table(datos, file="swirl_temp/datos.txt")
