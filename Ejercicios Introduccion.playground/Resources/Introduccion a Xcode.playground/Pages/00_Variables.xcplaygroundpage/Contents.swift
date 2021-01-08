import Foundation

//esto seria un comentario
/*
esto seria un
comentario de
varias lineas
*/

//el punto y coma es optativo, swift es un lenguaje que aporta
//azucar sintactico
print("Hola chicos me voy a tirar por la ventana");

/*
XCODE serie el IDE oficial para desarrollar aplicaciones IOS
Seria equivalente al eclipse en java

Antes se programaba con Objective-C pero ahora el lengue oficial es Swift
Swift es un lenguaje orientado a objetos, por lo tanto tendra muchas
similitudes con java. el codigo es bastante agradable para los programadores
*/

//Creamos constantes
let maximoNumeroDeIntentos = 10
//Podemos ver que no estamos poniendo el tipo de la variable que estamos usando
//Swift es un lenguaje TIPADO, no como js que es un lenguaje NO tipado
//Swift tiene lo que se llama la inferencia de tipos, esto es, el tipo de la
//variable no se tiene porque decidir en tiempo de compilacion con en Java,
//se puede decidir en tiempo de ejecucion

//no funciona ya que es constante
//maximoNumeroDeIntentos = 20

//creamos una variable
var variable1 = 10
print(variable1)
variable1 = 20
print(variable1)

//esto en js si que funcionaria, pero en swift NO
//variable1 = "son goku"
print(variable1)

//para hacer ctrl+c en mac con un teclado windows es windows+c

var cadena = "esto es una cadena muy bonita, siri :) :)"
//podemos concatener cadenas
print("la cadena es: " + cadena)

//ojo, esto no es como en java que podemos concatenar con + cualquier cosa
//print("El numero es: " + variable1)

//Opcion 1
//para hacer esto tenemos que convertir el numero en un String
print("El numero es: " + String(variable1))

//Opcion 2,
//podemos expandir las variables dentro de la cadena
//Para poner back slash en la mv alt+< o windows+w
print("El numero es: \(variable1)")

//otras maneras de declarar variables
var x = 0.0, y = 1.0, z = 3.0
print(x)

//podemos declarar el tipo en tiempo de compilacion
var cadena1 : String = "esto es una cadena, me voy a tirar por la ventana"
print(cadena1)

//ventajas
//puedo querer trabajar con un real, pero realmente el 70 seria un entero
var realFalso = 70
//esta funcion nos puede ayudar a en tiempo de ejecucion saber el tipo de una
//variable
print(type(of: realFalso))
//real = 70.9
var realBueno : Double = 70
print(type(of: realBueno))
realBueno = 70.9

//Podeis dar un alias o un mote a las clases o a los tipos de las variables
typealias MiTipoEntero = Int //mote
var numero1 : MiTipoEntero //MiTipoEntero -> Int
numero1 = 56
numero1 = 78
var numero2 : MiTipoEntero

//Tupla
//Es una estructura que es equivalente a las estructuras
//Es agrupar objetos en una sola variable
var tupla1 = (45,37,"perico de los palotes")
var hommer = ("Hommer","Simpson",38,1.69)
print(hommer)
print(hommer.0)//imprimimos el nombre
hommer.2 = 40

var marge = ("Marge","Simposon",36,2.10)

//podemos crear una tupla declarando los tipos
var bart : (String,String,Int,Double) = ("Bart","Simposon",10,1.50)

//Pattern matching.
//Es un concepto de asignacion de variables flexibles, donde indicamos un patron
//y el compilador se las busca para afinar valores que lo hagan posible
//Ejemplo, se me crearian las variables y swift asignaria cada poscion de la tupla
//a cada variable correpondiente
var (nombre,apellidos,edad,altura) = bart
print(nombre)
print(apellidos)
print(edad)
print(altura)

var (nombre2,apellidos2,edad2,altura2) = marge
edad2 = 11
print(marge)

//podemos dejar huecos en un momento declarando
var (_,_,edad3,altura3) = hommer
print(edad3)
print(altura3)

//Optionals
//Utilizaremos variables Optionals cuando una variable pueda tener valor nulo
var cadena2 = "Pepa"
print(cadena2)
//en swift nulo se representa con "nil"
//La variables creadas por defecto en swift no pueden ser nulas
//cadena2 = nil//error
//Si existe la posiblidad de que una variable sea nula, tendremos que crearla
//como Optionals, con el "?""
var cadena3 : String? = "Pepon"
//print(cadena3)
cadena3 = nil
cadena3 = "Otro nombre"

//ojo con esto poruqe puede llevar a alguna problema
//Realmente el optinal es un envoltorio o tipo wrapper, es decir,
//un objeto que contiene el objeto de verdad
//no podemos igualar un objeto normal a un objeto optional directamente
//cadena2 = cadena3
//si queremos hacerlo debemos de desenvolver el objeto del optional y eso
//se hace con "!"
cadena2 = cadena3!
print(cadena2)

//Se puede decir a un optional que haga un autounwrapper, esto es, que
//si iguala un tipo normal a un tipo optional, que no tenga que poner "!"
//se hace poniendo la admiracion en la declaracion de la variable
var cadenaOptionalAuto : String! = "Popeye"
var cadenaNormal : String = "Olivia"
cadenaNormal = cadenaOptionalAuto//esto antes habia que poner "?"
print(cadenaNormal)

print(type(of:cadenaOptionalAuto))
print(type(of:cadenaNormal))

//Si haceis conversiones de tipos, se crea un optional
var numeroString = "123"
var numero3 = Int(numeroString)
print(type(of:numero3))

var numero4 : Int = Int(numeroString)!
print(type(of:numero4))
