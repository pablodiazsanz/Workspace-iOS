import UIKit

//01.Operadores

//Asignacion
var a = 10
var b = a//= es para asignar un valor a otro

//Aritmeticos
print(1+1)//suma
print(1-1)//resta
print(2*3)//multi
print(2/2)//division entera
print(8%2)//modulo o resto de la division

//operador negacion
var c = 45
var d = -c//-45

//operador composicion
var e = 4
e += 5//e = e +5
print(e)

//comparadores, ojo con los espacios
print(2 == 2)//doble igual, igualdad
print(3 != 2)//no igual
print(2 > 1)//mayor para poner este simbolo "shift+º"
print(1 < 2)//menor
print(2 >= 1)//mayor o igual
print(1 <= 1)//menor igual

//operador ternario
var altura = 40
var tieneCabecera = true
//en caso de que tieneCabecera sea true, se ejecuta la parte despues de la ?
//en caso de que tieneCabecera sea false, se ejecuta la parte despues de :
//realmente es un if-else simplificado
var anchura = altura + (tieneCabecera ? 50 : 20)

//operador nil-coalscing (nil-fusionado) -> (a ?? b)
//Esto trabaja con optionals
//Si el optional "a" tiene un valor, entonces se devuelve dicho valor
//Si el optional "a" NO tiene valor, entonces toma el valor de "b"

var colorPorDefecto = "red"
var colorDeUsuario : String? = nil//optional

print(colorDeUsuario ?? colorPorDefecto)//en este caso imprime colorPorDefecto

colorDeUsuario = "blue"

print(colorDeUsuario ?? colorPorDefecto)//en este caso imprime "blue"
