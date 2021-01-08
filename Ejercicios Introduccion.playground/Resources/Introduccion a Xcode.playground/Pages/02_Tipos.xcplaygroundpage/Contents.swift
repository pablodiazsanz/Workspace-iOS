import Foundation

//Enteros
let numero: Int
let dedosDeLaMano = 5 //Por inferencia es un int

//Formatos de numeros
let decimal = 17
let binario = 0b101
let octal = 0o123
let hexadecimal = 0x123

//Double
//Son numeros de 64 bits, con 15 bits de precision
let numeroDoble = 12.23344334
let numeroDoble2 = 12.3344554e2
print(numeroDoble)
print(numeroDoble2)

//Float
//Se usan menos, 32 bits de rango, precision de 6 bits
let numeroFloat : Float = 12.23435

//Caracteres
let caracter : Character = "R"

//Boolean
let verdad : Bool = true

//String
let cadena = ""
let cadena2 = String() //creamos el objeto directamente

//Ver si esta vacio el string
if cadena.isEmpty {
    print("cadena vacia")
} else {
    print("cadena no vacia")
}

//Comparacion de String
if cadena == cadena2 {
    print("Son iguales")
} else {
    print("Son diferentes")
}

//Mutabilidad
//Cuando el estado de un objeto puede cambiar, entonces el objeto es mutable
//el estado de un objeto es el valor de sus atributos
//Con let es inmutable
let cadena3 = "esto no cambia nunca"
var cadena4 = "esta cadena puede cambiar"

//Iterar
for c in cadena3{ //similar a foreach
    print(c)
}

//Concatenar
var string1 = "hola "
var string2 = "caracola"
var welcome = string1 + string2
print(welcome)

welcome.append(" Mortadelo") //Con append tambien se concatena
print(welcome)

//Interpolacion
print("vamos a interpolar la variable welcome: \(welcome)")

//Caracteres unicode
print(":) 😃") //emojis con ctrl + cmd + espacio
print("\u{1f601}")

//Multilineas
var multilineasHTML = """
<html>
    <head>
        <title>Hola 😍</title>
    </head>
    <body>
        <h1>Como molan los emojis 🤩</h1>
    </body>
</html>
"""

print(multilineasHTML)

//Metodos de la clase String
//Hay que tener en cuenta que la clase String es un conjunto de caracteres, y
//notese lo de conjuntos
let saludo = "Guten Tag!"
//Cada caracter del string esta guardado en un sitio que no sabemos porque no
//esta en un array. Para saber donde estan, swift lleva su control en lo que
//se llama un "indice" llamado String.Index, el cual sabe la posicion de cada
//uno de los caracteres.
print(saludo)
//Tenemos que jugar con propiedades y funciones para acceder a las posiciones
//startIndex -> es la primera letra de la cadena
//endIndex -> es la siguiente posicion a la segunda letra de la cadena
print(saludo[saludo.startIndex])//G

//Esto no vale
//print(saludo[saludo.startIndex+1])

//Hay un metodo que se llama "index" que nos devuelve una posicion bajo unas
//condiciones de entrada.
var index = saludo.index(before: saludo.endIndex)

//Para el ultimo caracter
print(saludo[index]) //!

//Para el caracter siguiente a la primera letra
index = saludo.index(after: saludo.startIndex)
print(saludo[index]) //u

//Podemos usar una funcion para contar caracteres desde el principio
index = saludo.index(saludo.startIndex, offsetBy: 4)
print(saludo[index])//n

index = saludo.index(saludo.endIndex, offsetBy: -6)
print(saludo[index])//n

//Inserciones
var salu2 = "Hola chicos sois geniales 😎"
salu2.insert("!", at: salu2.endIndex)
print(salu2)

index = salu2.index(saludo.startIndex, offsetBy: 11)
salu2.insert(",", at: index)
print(salu2)

//Casting
//Para poder hacer un casting, debemos utilizar los constructores de clase
//apropiados, al hacer un cast, creamos un objeto nuevo, lo han diseñado aposta
let numeroConvertido = 12
print(type(of: numeroConvertido))

//Aqui se esta creando un objeto nuevo, notese que aqui no uso "new", y estoy
//invocando a un constructor, e IMPORTANTE, estoy creandoun objeto nuevo
let dobleConvertido = Double(numeroConvertido)
print(type(of: numeroConvertido)) //Double

//Ojo, porque si hay riesgo de casteo o conversion se crea un Optional
var sNumero = "32"
let enteroConvertido = Int(sNumero)
print(type(of: enteroConvertido))
print(enteroConvertido ?? 0)



