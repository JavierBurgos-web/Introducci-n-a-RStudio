#========================================================           
#                INTRODUCCIÓN A RSTUDIO                 #
##                Author: Javier Burgos                ##
#          Estudiante de Ingeniería Insdutrial          #
#               Universidad de Antioquia                #
#========================================================



#   1 VECTORES

#     1.1 Númerico
          vector_1 <- c(1,2,3)
          vector_2 <- c(7,8,9)
          
          #Actualizar Vector_1
          vector_1 <- c(0,2,4)
  
#     1.2 Caracteres
          cadena_1 <- c("","",'')
        
#     1.3 Operaciones
          masa_1 <- c(runif(100,50,120.3))            #Generar aleatorios entre
          masa_2 <- c(round(runif(100,50,120.3),2))   #Redondear a 0 decimales o los deseados
          masa_2 <- round(masa_1,2)                   #Redondear a 0 decomales o los deseados
          
          operacion <- masa_1 + masa_2                # Suma
          operacion <- masa_1 - masa_2                # Resta
          operacion <- masa_1 * masa_2                # Multiplicación
          operacion <- masa_1 / masa_2                # Divición
          operacion <- masa_1^2
          operacion
          
          summary(operacion)                          #Medidas estadisticas


#     1.4 Cargar datos
#         1.4.1 Desde el equipo
          

#         1.4.1 Desde la web
          
          url_datos <- 'https://raw.githubusercontent.com/JavierBurgos-web/Introducci-n-a-RStudio/main/datos.csv'
          datos <- read.table(url_datos, sep = ',', header = TRUE)
          
#     1.5 Editar datos
#         1.4.1 Crear nueva columna. (Nuevo encabezado llamado Radiation2)
          datos$NuevaColumna <- datos$Radiation/3.6

#     1.6 Vizualizar datos  
          datos[1:10,c('Radiation','NuevaColumna')]   # 10 primeros datos de las columnas mencionadas

#     1.7 Extraer datos
          toma_1 <- with(datos,Radiation>20 &TempAvg<10)       #Condiciones; Mayor que, Menor, igual
          
          subset(datos, 
                 subset = (Radiation>20 & TempAvg<10),              #subset: Condiciones; Mayor que, Menor, igual
                 select = c(Radiation,TempAvg,TempMax,TempMin)      #select: Selecciona columas deseadas
                )                                                   

#     1.7 Extraer datos 
          

          
# 2 GRAFICOS
          
#     Paquete para graficar
#     Installar: 
#       install.packages('lattice')
#     Llamar:    
        library(lattice)
          
#     1.1 Grafico de dispersión
        xyplot(Radiation ~ TempAvg,                        # Relación de dos variables 
               data = datos,                               # Fuente de datos
               type = c('p','r'),                          # Tipo de grafico:  'p' grafico de Disperción y 'r' gráfica de Ajuste ('l' para Ajuste Lineal)
               main= 'RADIACIÓN VS TEMPERATURA PROMEDIO',
               ylab = 'Radiación',
               xlab = 'Temperatura promedio',
               pch = 21, cex=0.5,                          # pch: Forma de los puntos; 21 son circulos. Tambien puede ser '+'. cex: Tamaño de los circulos
               col= 'black',fill='#90EE90',                # col:Color de linea y fill:contorno de circulos & Color de relleno
               scales='same'                               # 'same', 'free', o no ir
               )     

            
        
         