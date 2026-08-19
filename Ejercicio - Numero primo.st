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
