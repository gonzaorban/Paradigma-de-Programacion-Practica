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
