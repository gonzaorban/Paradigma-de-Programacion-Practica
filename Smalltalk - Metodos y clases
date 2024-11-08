TRABAJO PRACTICO 4

"CLASE 09/10"

"Realizar un método que devuelva si un número es primo o no. El método se debe llamar: esPrimo y devolver verdadero o falso."
"Clase: SmallInteger - - mathematical functions"
esPrimo
| primo divisor resto | 
"self es el numero que viene como parametro" 
(self <= 1) ifTrue: [ 
	^false. 
	].  
divisor:= 2. 
primo:= true.  
" ~= es el signo distinto " 
[primo & (((self sqrt)) >= divisor)] whileTrue: [  	
	((self \\ divisor) = 0) ifTrue: [  	  
		primo:= false. 	
		]     
	ifFalse: [      	 
		divisor:= divisor + 1.   	
		].     
	].
^primo.



“Realizar un método que devuelva un arreglo de dos (2) elementos donde el elemento uno es la parte entera y el elemento 2 es la parte decimal 
Ejemplo: 23.44 dividirNumero ----> #(23 44) “
“Clase: SmallFloat64“ 
DividirNumero
| nro |  
nro:= self asString.  
nro:= nro substrings: '.'.  
nro at: 1 put: (nro at: 1) asInteger. 
nro at: 2 put: (nro at: 2) asInteger. 
^nro.



"Dado un arreglo de números encontrar, realizar un método que encuentre el mayor valor y otro método que encuentre el menor valor."
"Clase: Array"
buscoMayor  
| mayor |  
mayor:= self at: 1. "tomo el primer elemento como mayor" 
"salteo la primer iteracion" 
2 to: (self size) do: [ :i| 	 	
	((self at: i) isNumber) ifTrue: [  		
		((self at: i) > mayor) ifTrue: [  			
			mayor:= self at: i. 			
			]. 		
		].  	
		"si no es un numero, lo saltea" 	
	]. 
^mayor.


"Dado un arreglo de números encontrar, realizar un método que encuentre el menor valor. #(20 38 13 1)"
"Clase: Array"
buscoMenor  
| menor |  
menor:= self at: 1. "tomo el primer elemento como menor" 
"salteo la primer iteracion" 
2 to: (self size) do: [ :i| 	 	
	((self at: i) isNumber) ifTrue: [  		
		((self at: i) < menor) ifTrue: [  			
			menor:= self at: i. 			
			]. 		
		].  	
		"si no es un numero, lo saltea" 	
	]. 
^menor.


"CLASE 10/10"

"Cargar un arreglo con 30 elementos aleatorios, entre –1000 y 1000.
Crear una lista con los elementos que estén en un rango ingresado por el usuario. 
Imprimir la lista. 
Informar la cantidad de elementos de la lista." 
| lista arreglo menor mayor |

lista:= OrderedCollection new.
arreglo:= Array new: 30. "creo un arreglo de 30 elementos"

"cargo el arreglo"
1 to: (arreglo size) do: [ :i|
	"() atRandom , te da un elemento aleatorio en ese rango"
	arreglo at: i put: ((-1000 to: 1000) atRandom).
	].

menor:= (UIManager default request: 'Ingrese el menor valor del rango de la lista') asInteger.
"controlo que no ingrese una palabra"
[menor = nil] whileTrue: [ 
	menor:= (UIManager default request: 'Numero no valido, intente nuevamente') asInteger.
	].

mayor:= (UIManager default request: 'Ingrese el mayor valor del rango de la lista') asInteger.
"controlo que no ingrese una palabra y que este bien ingresado el rango"
[mayor = nil and: (menor > mayor)] whileTrue: [ 
	mayor:= (UIManager default request: 'Numero no valido, intente nuevamente') asInteger.
	].

"cargo la lista"
arreglo do: [:c|
	"pregunto si el elemento esta en el rango solicitado"
	((c >= menor) and: (c <= mayor)) ifTrue: [ 
		lista add: c.
		].
	].

Transcript clear.
Transcript show: (arreglo) ; cr.
Transcript show: 'El rango inferior es ', menor asString, ' y el rango superior es ', mayor asString ; cr.
Transcript show: (lista) ; cr.
Transcript show: ('La cantidad de elementos de la lista es ', (lista size) asString).




"CLASE 16/10"

"EJERCICIO 5"
"Pasar un período expresado en segundos a un período expresado en días, horas, minutos y segundos." 
"Clase: Smallinteger - mathematical functions" 

Solucion 1:
obtenerPeriodo

| segundos minutos horas dias periodo |

segundos:= self.
"convierto los segundos a dias"
"1 dia = 86400 segundos"
dias:= 0.
[segundos > 86400] whileTrue: [ 
	segundos:= segundos - 86400.
	dias:= dias + 1.
	].

"convierto los segundos a horas"
"1 hora = 3600 segundos"
horas:= 0.
[segundos > 3600] whileTrue: [ 
	segundos:= segundos - 3600.
	horas:= horas + 1.
	].

"convierto los segundos a horas"
"1 minuto = 60 segundos"
minutos:= 0.
[segundos > 60] whileTrue: [ 
	segundos:= segundos - 60.
	minutos:= minutos + 1.
	].

"formo el periodo para poder mostrar"
periodo:= (dias asString, ' dias ', horas asString, ' horas ', minutos asString, ' minutos ', segundos asString, ' segundos').
^periodo.


Solucion 2:
obtenerPeriodoo

| segundos minutos horas dias periodo |

segundos:= self.
"convierto los segundos a dias"
"1 dia = 86400 segundos"
dias:= segundos // 86400. "obtengo los dias"
segundos:= segundos \\ 86400. "obtengo los segundos para seguir operando"

"convierto los segundos a horas"
"1 hora = 3600 segundos"
horas:= segundos // 3600. "obtengo los horas"
segundos:= segundos \\ 3600. "obtengo los segundos para seguir operando"

"convierto los segundos a horas"
"1 minuto = 60 segundos"
minutos:= segundos // 60. "obtengo los horas"
segundos:= segundos \\ 60. "obtengo los segundos para seguir operando"

"formo el periodo para poder mostrar"
periodo:= (dias asString, ' dias ', horas asString, ' horas ', minutos asString, ' minutos ', segundos asString, ' segundos').
^periodo.



"EJERCICIO 6"
"Hacer un método que dada una fecha en formato DD/MM/AA, verifique si es correcta o errónea. Ej.: El 31/02/97 es una fecha errónea."
verificarFecha
| fecha meses año dia mes |
fecha:= self.

((fecha size) = 8) ifFalse: [ 
	^'Fecha ingresada es invalida'.
	].

"controlo que este bien ingresado el formato DD/MM/AA"
1 to: (fecha size) do: [ :i|
	"pregunto por la posicion de la /"
	((i = 3) or: (i = 6)) ifTrue: [ 
		"pregunta si no es la /"
		((fecha at: i) ~= $/) ifTrue: [ 	
			^'Fecha ingresada es invalida'.
			].	 
		] 
	"tiene que venir un numero"
	ifFalse: [ 
		"convierto el caracter a string y dps a numero"
		(((fecha at: i) asString asInteger) isInteger) ifFalse: [ 
			
			^'Fecha ingresada es invalida'.
			].
		].	
	].

"controlo que sea un fecha existente"

"en este caso AA todos los años son validos"
año:= (fecha copyFrom: 7 to: 8) asInteger. "saco el año"
"pregunto si no es año bisiesto"
((año \\ 4) = 0) ifTrue: [ 
	"cada posicion es un mes, con la cantidad de dias"
	meses:= #[31 29 31 30 31 30 31 31 30 31 30 31].
	]
ifFalse: [ 
	"en febrero reemplazo por 28 en vez de 29"
	meses:= #[31 28 31 30 31 30 31 31 30 31 30 31].
	].

mes:= (fecha copyFrom: 4 to: 5) asInteger. "saco el mes"
(mes > 12) ifTrue: [ 
	^'Fecha ingresada es invalida'.
	].

dia:= (fecha copyFrom: 1 to: 2) asInteger. "saco el dia"
(dia > (meses at: mes)) ifTrue: [ 
	^'Fecha ingresada es invalida'.
	].

^'Fecha ingresada es valida'.



"Hacer un método que dada una fecha en formato DD/MM/AAAA o DD-MM-AAAA, verifique si es correcta o errónea. Ej.: El 31/02/1997 es una fecha errónea."
verificarFechaa

| fecha meses año dia mes |

fecha:= self.

((fecha size) = 10) ifFalse: [ 
	^'Fecha ingresada es invalida, error de longitud'.
	].

"controlo que este bien ingresado el formato DD/MM/AAAA"
1 to: (fecha size) do: [ :i|
	
	"pregunto por la posicion de la / o -"
	((i = 3) or: (i = 6)) ifTrue: [ 
		"pregunta si no es la / o -"
		(((fecha at: i) ~= $/) and: ((fecha at: i) ~= $-)) ifTrue: [ 
			^'Fecha ingresada es invalida, error de formato'.
			].
		
		] 
	"tiene que venir un numero"
	ifFalse: [ 
		
		"convierto el caracter a string y dps a numero"
		(((fecha at: i) asString asInteger) isInteger) ifFalse: [ 
			^'Fecha ingresada es invalida, error de formato'.
			].
		].
	
	].

"controlo que sea un fecha existente"

año:= (fecha copyFrom: 7 to: 10) asInteger. "saco el año"
(año > 2024) ifTrue: [ 
	^'Fecha ingresada es invalida, error en el año'.
	].

"pregunto si no es año bisiesto"
((año \\ 4) = 0) ifTrue: [ 
	"cada posicion es un mes, con la cantidad de dias"
	meses:= #[31 29 31 30 31 30 31 31 30 31 30 31].
	]
ifFalse: [ 
	"en febrero reemplazo por 28 en vez de 29"
	meses:= #[31 28 31 30 31 30 31 31 30 31 30 31].
	].

mes:= (fecha copyFrom: 4 to: 5) asInteger. "saco el mes"
(mes > 12) ifTrue: [ 
	^'Fecha ingresada es invalida, error en el mes'.
	].

dia:= (fecha copyFrom: 1 to: 2) asInteger. "saco el dia"
(dia > (meses at: mes)) ifTrue: [ 
	^'Fecha ingresada es invalida, error en el dia'.
	].

^'Fecha ingresada es valida'.



"EJERCICIO 10"
"Construir un método ‘longitudes’ tal que, dada una lista de cadenas, devuelva una lista de pares 
ordenados que representen la ubicación de cada cadena y su longitud. Ej.: longitudes [‘este’, ‘es’, 
‘el’, ‘ejemplo’, ‘sí?’]. Devolverá: [(1,4),(2,2),(3,2),(4,7),(5,3)]       (no pidio el profe este ejercicio)"
"para probar #('este' 'es' 'el' 'ejemplo' 'si?') longitudes" 
"Clase: Array - Converting"

longitudes
| arreglo salida |

arreglo:= self.

arreglo do: [ :c| 
	(c isString) ifFalse: [
		^'Error, un elemento del arreglo no es un string'.
		].
	].

salida:= Array new: (arreglo size).
1 to: (arreglo size) do: [ :i|
	
	salida at: i put: ('(', i asString, ',', ((arreglo at: i) size) asString, ')').
	].

^salida.



"EJERCICIO 14"
"Hacer un método que dado un conjunto de palabras, permita armar otra; esta se formará con las 
iniciales de las palabras que empiezan con una consonante y con la última consonante. 
Ej.: MetodoY [‘universidad’, ‘tecnológica’, ‘nacional’]. Devolverá: ‘DTNL’"
"para probar si funciona #('universidad' 'tecnológica' 'nacional') convertirConsonante."
"Clase: Array - Converting"

convertirConsonante

| arreglo vocales salida primerLetra ultimaLetra bandera |

arreglo:= self.
vocales:= #(A E I O U).
salida:= ''.

arreglo do: [ :c|
	(c isString) ifFalse: [ 
		^'Error, el arreglo no contiene solamente palabras'.
		].
	].

1 to: (arreglo size) do: [ :i|
	
	bandera:= true. "reinicio"
	"pregunto por la primera posicion"
	primerLetra:= (arreglo at: i) at: 1.
	vocales do: [ :c|
		"convierto ambos a string, porque el elemento de vocales lo devuelve como ByteSymbol"
		((primerLetra asUppercase asString) = (c asString)) ifTrue: [
			"cuando sea vocal pongo bandera en falso" 
			bandera:= false.
			]. 
		].
	(bandera) ifTrue: [ 
		salida:= (salida, primerLetra asUppercase asString).
		].
	
	bandera:= true. "reinicio"
	"pregunto por la ultima posicion"
	ultimaLetra:= (arreglo at: i) at: ((arreglo at: i) size).
	vocales do: [ :c|
		"convierto ambos a string, porque el elemento de vocales lo devuelve como ByteSymbol"
		((ultimaLetra asUppercase asString) = (c asString)) ifTrue: [ 
			"cuando sea vocal pongo bandera en falso" 
			bandera:= false.
			]. 
		].
	(bandera) ifTrue: [ 
		salida:= (salida, ultimaLetra asUppercase asString).
		].
	
	].

^salida.



"CLASE 24/10"

"Implementar un método que permita buscar en un arreglo numerico, el elemento mayor y el elemento menor. Se debe devolver un nuevo arreglo, con los datos encontrados: 
MenorValor y posición		Mayor valor y posición"
"Clase: Array"
buscarMenorMayor

| arreglo salida mayor posMayor menor posMenor |

arreglo:= self.

"controlo que todos los elementos sean numeros"
arreglo do: [ :c| 
	(c isNumber) ifFalse: [ 
		^'Error, el arreglo tiene elementos que no son numeros'
		].
	].

salida:= Array new: 4.
mayor:= (arreglo at: 1).
posMayor:= 1.
menor:= (arreglo at: 1).
posMenor:= 1.

"salteo la primer iteracion" 
2 to: (arreglo size) do: [ :i| 	 	
	((arreglo at: i) < menor) ifTrue: [  		
		
		menor:= arreglo at: i.
		posMenor:= i
		]
	"sino es el menor pregunto por el mayor"
	ifFalse: [ 
		((arreglo at: i) > mayor) ifTrue: [  			
			mayor:= arreglo at: i. 			
			posMayor:= i.
			].
		].
	
	].

salida at: 1 put: menor.
salida at: 2 put: posMenor.
salida at: 3 put: mayor.
salida at: 4 put: posMayor.

^salida.



"Dado el siguiente arreglo de entrada #(menorValor, posim, mayorValor, posiM) tiene que devolver #(#(mnorValor, posim) #(mayorValor, posiM))"
"corregir (algo no funciona)"
formateaArreglo
"Clase: Array"

| arreglo salida aux1 aux2 |

arreglo:= self.
salida:= Array new: 2. "los elementos van hacer arreglos"
aux1:= Array new: 2.
aux2:= Array new: 2. 

1 to: 2 do: [ :i| 
	aux1 at: i put: (arreglo at: i).
	].
salida at: 1 put: aux1.

1 to: 2 do: [ :i| 
	aux2 at: i put: (arreglo at: (i + 2)).
	].
salida at: 2 put: aux2.

^salida.



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



"EJERCICIO. Crear y Recuperar el contenido de un archivo binario."
| x arreglo | 

arreglo:= Array new:5. 

"Cargar el arreglo" 
arreglo at: 1 put: 100. 
arreglo at: 2 put: 200. 
arreglo at: 3 put: 200. 
arreglo at: 4 put: 200. 
arreglo at: 5 put: 200. 

"grabo el arreglo"
'ArchivoBinario.bin' asFileReference ensureDelete binaryWriteStreamDo: [ :stream | 
	stream nextPutAll: arreglo.
	]. 


"Recupero el contenido del archivo binario" 
x:='ArchivoBinario.bin' asFileReference binaryReadStream upToEnd. 

^x.



"EJERCICIO de Manejo de Archivo Tabulado 
Dado el archivo que se adjunta en la carpeta: 'Asignar codigo numerico.txt'
a) Asignar un código numérico por cada registro del archivo (incremental). Mostrar dicho registro en el transcript (con el código generado).

archivo original 
ADP-LC-APC	ACC. F.O.FO MNET ACOPLADOR LC/APC SIMPLEX 
ADP-SC-APC	ACC. F.O.FO MNET ACOPLADOR SC/APC SIMPLEX 

Salida 1 (tamaño fijo) 
ADP-LC-APC	001	ACC. F.O.FO MNET ACOPLADOR LC/APC SIMPLEX 
ADP-SC-APC	002	ACC. F.O.FO MNET ACOPLADOR SC/APC SIMPLEX 
"
| punteroEntrada dirTrabajo linea bandera codigo | 

dirTrabajo:= FileSystem disk workingDirectory. 
  
"Abrimos el archivo para lectura. El archivo de existir" 
"Ejemplo de Creación: File @ C:\Users\Usuario\Documents\Pharo\images\Pharo 12.0 - 64bit (stable)"
"Debe estar dentro de la carpeta Pharo 12.0 - 64bit (stable)"
punteroEntrada:= (dirTrabajo /'Asignar codigo numerico.txt') readStream.

codigo:= 0. "inicializo"
Transcript show: (punteroEntrada nextLine) ; cr. "guardo y salteo primera linea"

"atEnd pregunta cuando termine el archivo"
[punteroEntrada atEnd not] whileTrue: [ 
	
	bandera:= false. "reinicio"
	linea:= punteroEntrada nextLine. "guardo la linea a analizar"
	codigo:= codigo + 1.

	linea do: [ :c| 
		
		"pregunto por el tab no el espacio"	
		((c = $	) and: (bandera = false)) ifTrue: [ 

			bandera:= true. "para no volver a copiar"
			(codigo < 10) ifTrue: [ 
				Transcript show: (' 00', codigo asString , ' '). "inserto el codigo"
				]
			ifFalse: [ 
				(codigo < 100) ifTrue: [ 
					Transcript show: (' 0', codigo asString , ' '). "inserto el codigo"
					]
				ifFalse: [ 
					"cuando sea mayor a 100"
					Transcript show: (' ', codigo asString , ' '). "inserto el codigo"
					].
				].

			]
		ifFalse: [ 
			"copio el caracter como esta"
			Transcript show: c.
			].
	
		].

	Transcript cr. "salto de linea"
	
	].

"presionar para ver el resultado: ctrl + O + T"



"EJERCICIO de Manejo de Archivo Tabulado 
Dado el archivo que se adjunta en la carpeta: 'Asignar codigo numerico.txt'
b) Generar un nuevo archivo de salida, donde se incorpore además el código generado para cada registro. Este debe estar ubicado en la segunda columna.

archivo original 
ADP-LC-APC	ACC. F.O.FO MNET ACOPLADOR LC/APC SIMPLEX 
ADP-SC-APC	ACC. F.O.FO MNET ACOPLADOR SC/APC SIMPLEX 

Salida 1 (tamaño fijo) 
ADP-LC-APC	001	ACC. F.O.FO MNET ACOPLADOR LC/APC SIMPLEX 
ADP-SC-APC	002	ACC. F.O.FO MNET ACOPLADOR SC/APC SIMPLEX 
"
| punteroEntrada punteroSalida dirTrabajo linea bandera codigo salida | 

dirTrabajo:= FileSystem disk workingDirectory. 
  
"Abrimos el archivo para lectura. El archivo de existir" 
"Ejemplo de Creación: File @ C:\Users\Usuario\Documents\Pharo\images\Pharo 12.0 - 64bit (stable)"
"Debe estar dentro de la carpeta Pharo 12.0 - 64bit (stable)"
punteroEntrada:= (dirTrabajo /'Asignar codigo numerico.txt') readStream.
punteroSalida:= (dirTrabajo /'Archivo salida.txt') writeStream. "creo un archivo desde cero"

codigo:= 0. "inicializo"
punteroSalida nextPutAll: (punteroEntrada nextLine) ; cr.

"atEnd pregunta cuando termine el archivo"
[punteroEntrada atEnd not] whileTrue: [ 
	
	bandera:= false. "reinicio"
	linea:= punteroEntrada nextLine. "guardo la linea a analizar"
	codigo:= codigo + 1.
	
	linea do: [ :c| 
			
		((c = $	) and: (bandera = false)) ifTrue: [ 
				
			bandera:= true. "para no volver a copiar"
			(codigo < 10) ifTrue: [ 
				punteroSalida nextPutAll: (' 00', codigo asString , ' '). "inserto el codigo"
				]
			ifFalse: [ 
				(codigo < 100) ifTrue: [ 
					punteroSalida nextPutAll: (' 0', codigo asString , ' '). "inserto el codigo"
					]
				ifFalse: [ 
					"cuando sea mayor a 100"
					punteroSalida nextPutAll: (' ', codigo asString , ' '). "inserto el codigo"
					].
				].
			
			]
		ifFalse: [ 
			"copio el caracter como esta"
			punteroSalida nextPutAll: (c asString). "pasarlo a string es obligatorio sino tira error"
			].
	
		].
	
	punteroSalida cr. "salto de linea"
	
	].

punteroSalida close. "cierro el archivo por ser de escritura"



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

