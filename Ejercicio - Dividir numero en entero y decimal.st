“Realizar un método que devuelva un arreglo de dos (2) elementos donde el elemento uno es la parte entera y el elemento 2 es la parte decimal 
Ejemplo: 23.44 dividirNumero ----> #(23 44) “
“Clase: SmallFloat64“ 
DividirNumero
| nro |  
nro:= self asString.  
nro:= nro substrings: '.'.  
nro at: 1 put: (nro at: 1) asInteger. 
nro at: 2 put: (nro at: 2) asInteger. 
^nro.
