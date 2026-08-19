"CLASE 16/10"

"EJERCICIO 5"
"Pasar un período expresado en segundos a un período expresado en días, horas, minutos y segundos." 
"Clase: Smallinteger - mathematical functions" 

Solucion 1:
obtenerPeriodo

| segundos minutos horas dias periodo |

segundos:= self.
"convierto los segundos a dias"
"1 dia = 86400 segundos"
dias:= 0.
[segundos > 86400] whileTrue: [ 
	segundos:= segundos - 86400.
	dias:= dias + 1.
	].

"convierto los segundos a horas"
"1 hora = 3600 segundos"
horas:= 0.
[segundos > 3600] whileTrue: [ 
	segundos:= segundos - 3600.
	horas:= horas + 1.
	].

"convierto los segundos a horas"
"1 minuto = 60 segundos"
minutos:= 0.
[segundos > 60] whileTrue: [ 
	segundos:= segundos - 60.
	minutos:= minutos + 1.
	].

"formo el periodo para poder mostrar"
periodo:= (dias asString, ' dias ', horas asString, ' horas ', minutos asString, ' minutos ', segundos asString, ' segundos').
^periodo.


Solucion 2:
obtenerPeriodoo

| segundos minutos horas dias periodo |

segundos:= self.
"convierto los segundos a dias"
"1 dia = 86400 segundos"
dias:= segundos // 86400. "obtengo los dias"
segundos:= segundos \\ 86400. "obtengo los segundos para seguir operando"

"convierto los segundos a horas"
"1 hora = 3600 segundos"
horas:= segundos // 3600. "obtengo los horas"
segundos:= segundos \\ 3600. "obtengo los segundos para seguir operando"

"convierto los segundos a horas"
"1 minuto = 60 segundos"
minutos:= segundos // 60. "obtengo los horas"
segundos:= segundos \\ 60. "obtengo los segundos para seguir operando"

"formo el periodo para poder mostrar"
periodo:= (dias asString, ' dias ', horas asString, ' horas ', minutos asString, ' minutos ', segundos asString, ' segundos').
^periodo.
