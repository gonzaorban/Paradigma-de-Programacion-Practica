module Paradigma where --Se utiliza para iniciar

    -- Eliminar los primeros "a" elementos
    myDrop :: (Eq t, Num t) => t -> [a] -> [a] --Defino los tipos de datos
    myDrop _ [] = []
    myDrop 0 xs = xs
    myDrop a (_ : xs) = myDrop (a - 1) xs

    -- Devolver los primeros los elementos
    myTake :: (Eq t, Num t) => t -> [a] -> [a] --Defino los tipos de datos
    myTake _ [] = []
    myTake 0 xs = []
    myTake a (x : xs) = x : myTake (a - 1) xs

    -- Contar la cantidad de numeros 5
    cont5 :: (Eq a1, Num a2, Num a1) => [a1] -> a2 --Defino los tipos de datos
    cont5 [] = 0
    cont5 (5 : xs) = 1 + cont5 xs
    cont5 (_ : xs) = cont5 xs

-- En la terminal
-- :r -- sirve para recargar los cambios que hiciste
-- :! cls -- borra la terminal
-- :load nombreArchivo -- es para cargar las funciones que definas de ese archivo