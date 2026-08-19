"Hacer un método que dada una fecha en formato DD/MM/AAAA o DD-MM-AAAA, verifique si es correcta o errónea. Ej.: El 31/02/1997 es una fecha errónea."
verificarFechaa

| fecha meses año dia mes |

fecha:= self.

((fecha size) = 10) ifFalse: [ 
	^'Fecha ingresada es invalida, error de longitud'.
	].

"controlo que este bien ingresado el formato DD/MM/AAAA"
1 to: (fecha size) do: [ :i|
	
	"pregunto por la posicion de la / o -"
	((i = 3) or: (i = 6)) ifTrue: [ 
		"pregunta si no es la / o -"
		(((fecha at: i) ~= $/) and: ((fecha at: i) ~= $-)) ifTrue: [ 
			^'Fecha ingresada es invalida, error de formato'.
			].
		
		] 
	"tiene que venir un numero"
	ifFalse: [ 
		
		"convierto el caracter a string y dps a numero"
		(((fecha at: i) asString asInteger) isInteger) ifFalse: [ 
			^'Fecha ingresada es invalida, error de formato'.
			].
		].
	
	].

"controlo que sea un fecha existente"

año:= (fecha copyFrom: 7 to: 10) asInteger. "saco el año"
(año > 2024) ifTrue: [ 
	^'Fecha ingresada es invalida, error en el año'.
	].

"pregunto si no es año bisiesto"
((año \\ 4) = 0) ifTrue: [ 
	"cada posicion es un mes, con la cantidad de dias"
	meses:= #[31 29 31 30 31 30 31 31 30 31 30 31].
	]
ifFalse: [ 
	"en febrero reemplazo por 28 en vez de 29"
	meses:= #[31 28 31 30 31 30 31 31 30 31 30 31].
	].

mes:= (fecha copyFrom: 4 to: 5) asInteger. "saco el mes"
(mes > 12) ifTrue: [ 
	^'Fecha ingresada es invalida, error en el mes'.
	].

dia:= (fecha copyFrom: 1 to: 2) asInteger. "saco el dia"
(dia > (meses at: mes)) ifTrue: [ 
	^'Fecha ingresada es invalida, error en el dia'.
	].

^'Fecha ingresada es valida'.
