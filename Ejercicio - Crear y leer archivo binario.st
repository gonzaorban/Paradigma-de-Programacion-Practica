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
