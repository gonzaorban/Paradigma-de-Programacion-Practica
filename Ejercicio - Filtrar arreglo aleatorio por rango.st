"CLASE 10/10"

"Cargar un arreglo con 30 elementos aleatorios, entre –1000 y 1000.
Crear una lista con los elementos que estén en un rango ingresado por el usuario. 
Imprimir la lista. 
Informar la cantidad de elementos de la lista." 
| lista arreglo menor mayor |

lista:= OrderedCollection new.
arreglo:= Array new: 30. "creo un arreglo de 30 elementos"

"cargo el arreglo"
1 to: (arreglo size) do: [ :i|
	"() atRandom , te da un elemento aleatorio en ese rango"
	arreglo at: i put: ((-1000 to: 1000) atRandom).
	].

menor:= (UIManager default request: 'Ingrese el menor valor del rango de la lista') asInteger.
"controlo que no ingrese una palabra"
[menor = nil] whileTrue: [ 
	menor:= (UIManager default request: 'Numero no valido, intente nuevamente') asInteger.
	].

mayor:= (UIManager default request: 'Ingrese el mayor valor del rango de la lista') asInteger.
"controlo que no ingrese una palabra y que este bien ingresado el rango"
[mayor = nil and: (menor > mayor)] whileTrue: [ 
	mayor:= (UIManager default request: 'Numero no valido, intente nuevamente') asInteger.
	].

"cargo la lista"
arreglo do: [:c|
	"pregunto si el elemento esta en el rango solicitado"
	((c >= menor) and: (c <= mayor)) ifTrue: [ 
		lista add: c.
		].
	].

Transcript clear.
Transcript show: (arreglo) ; cr.
Transcript show: 'El rango inferior es ', menor asString, ' y el rango superior es ', mayor asString ; cr.
Transcript show: (lista) ; cr.
Transcript show: ('La cantidad de elementos de la lista es ', (lista size) asString).
