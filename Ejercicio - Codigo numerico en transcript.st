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
