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
