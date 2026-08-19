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
