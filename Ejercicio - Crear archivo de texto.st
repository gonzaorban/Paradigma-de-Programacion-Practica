"CLASE 30/10"

"EJERCICIO. Crear un archivo de texto en Pharo"
| punteroArchivo dirTrabajo | 

"punteroArchivo: es el nombre interno" 
"ArchivoTexto_20241030.txt es el nombre externo" 

"Consultar carpeta o directorio de trabajo" 
dirTrabajo:=FileSystem disk workingDirectory. 

"Ejemplo de Creación: File @ C:\Users\Usuario\Documents\Pharo\images\Pharo 12.0 - 64bit (stable)" 

punteroArchivo:= (dirTrabajo /'ArchivoTexto_20241030.txt') writeStream. "En este caso, crea un archivo con ese nombre"
punteroArchivo nextPutAll:'esta es una linea de prueba desde pharo'; cr. 
punteroArchivo nextPutAll:'segunda linea desde pharo'. 
punteroArchivo close. 
