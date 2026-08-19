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
