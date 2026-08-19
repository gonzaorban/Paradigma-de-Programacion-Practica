"EJERCICIO. Leer el contenido de un archivo creado."

| punteroArchivo dirTrabajo linea | 

"Leer un Archivo de Texto" 

dirTrabajo:= FileSystem disk workingDirectory. 
  
"Abrimos el archivo para lectura. El archivo de existir" 
"Ejemplo de Creación: File @ C:\Users\Usuario\Documents\Pharo\images\Pharo 12.0 - 64bit (stable)"
"Debe estar dentro de la carpeta Pharo 12.0 - 64bit (stable)"
punteroArchivo :=(dirTrabajo /'ArchivoTexto_20241030.txt') readStream.   

linea:= punteroArchivo nextLine. 
^linea. 
