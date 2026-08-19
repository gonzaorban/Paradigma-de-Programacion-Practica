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
