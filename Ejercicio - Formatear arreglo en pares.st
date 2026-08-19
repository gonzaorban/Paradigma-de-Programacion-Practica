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
