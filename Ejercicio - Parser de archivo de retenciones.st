"CLASE 31/10"

"EJERCICIO. 
Generar una o mas clases que permitan parsear archivos. 
Ejercicio 1: implementar una clase que tenga por lo menos un método setter llamado archivo, un método getter llamado archivo (es el nombre del atributo archivo). 
El atributo archivo debe contener el nombre del archivo a procesar. 
Se debe implementar también un método parser que va a ser la interfaz con el usuario, el cual va a realizar el proceso del archivo, según el formato que sea indicado. 
Archivo de formato y archivo de datos: Ejercicio - Clase 31-10-2024 
Se puede utilizar otros métodos para usos privados 

El nombre del archivo de retenciones que contienen los datos a importar debe tener formato texto y con el siguiente diseño: Retxx­xxxxxxxx­xYYmmaaaa.txt,es decir: la palabra Ret, la C.U.I.T. del
agente, dos dígitos para la dependencia solo si corresponde, y el período fiscal; dos dígitos de mes y cuatro de año. Por Ejemplo:
Ret20­24341851­200112015.txt. ­ Ejemplo de nombre de archivo con dependencia 00 ­
Ret20­24341851­2112015.txt ­ Ejemplo de nombre de archivo sin dependencia
"

"FALTA TERMINAR"
| punteroEntrada punteroSalida dirTrabajo nombreArch linea  | 

dirTrabajo:= FileSystem disk workingDirectory. 
  
"Abrimos el archivo para lectura. El archivo de existir" 
"Ejemplo de Creación: File @ C:\Users\Usuario\Documents\Pharo\images\Pharo 12.0 - 64bit (stable)"
"Debe estar dentro de la carpeta Pharo 12.0 - 64bit (stable)"
punteroEntrada:= (dirTrabajo /'ejemplo.txt') readStream.


"busco y genero el nombre del archivo de salida"
linea:= punteroEntrada nextLine. "obtengo la primer linea"

nombreArch= 'Ret'. "inicializo"

"copio los primeros dos numeros del cuit"
1 to: 2 do: [ :i|
nombreArch:= (nombreArch,(linea at: i) asString).
].

punteroSalida nextPutAll: '-'.

"copio los 8 numeros del cuit que serian el DNI"
3 to: 10 do: [ :i|
nombreArch:= (nombreArch,(linea at: i) asString).
].

punteroSalida nextPutAll: '-'.

"copio el ultimo numero del cuit"
nombreArch:= (nombreArch,(linea at: 11) asString).

"evaluo si es con o sin dependencia"
((linea at: 157) = 0) ifTrue: [

((linea at: 158) = 0) ifTrue: [
"solo va a entrar aca cuando sea 00 osea con dependencia"
nombreArch:= (nombreArch,'00').
].
].

"obtengo fecha (mes y año)"
113 to: 118 do: [ :i|
nombreArch:= (nombreArch,(linea at: i) asString).
].

nombreArch:= (nombreArch,'.txt').
punteroSalida:= (dirTrabajo/nombreArch) writeStream. "creo un archivo desde cero"



[punteroEntrada atEnd not] whileTrue: [
	
	].

