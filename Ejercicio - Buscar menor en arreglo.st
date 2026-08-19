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
