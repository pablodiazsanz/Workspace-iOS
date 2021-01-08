import Foundation

//Ej1. Algoritmo que pida un número y diga si es positivo, negativo o 0.
var num = 65
if (num > 0) {
    print("Este numero es POSITIVO")
} else if (num < 0) {
    print("Este numero es NEGATIVO")
} else {
    print("Este numero es igual a 0")
}

//Ej2. Escribe un programa que lea un número e indique si es par o impar.
var num2 = 23
if (num2 % 2 == 0) {
    print("Este numero es PAR")
} else {
    print("Este numero es IMPAR")
}

//Ej3. Escribe un programa que dado un nombre de usuario y una contraseña
//y si se ha introducido "pepe" y "asdasd" se indica "Has entrado al sistema"
var usr = "Lola"
var psw = "rrer"
if (usr == "pepe" || psw == "asdasd") {
    print("Has entrado al sistema")
} else {
    print("NO has entrado al sistema")
}

//Ej4. Programa que dada una cadena por teclado y compruebe si la primera letra es un "/" y la segunda un "*", en caso afirmativo se escribira la palabra entera, en caso contrario escribir "no es correcta"
var palabra = "/*hola"
if (palabra[palabra.startIndex] == "/" && palabra[palabra.index(palabra.startIndex, offsetBy: 1)] == "*") {
    print(palabra)
} else {
    print("No es correcta")
}

//Ej5. Algoritmo que dado tres números y los muestre ordenados (de mayor a menor);
var orden: [Int] = [2, 18, 7]
for num in orden.sorted() {
    print(num)
}

//Ej6. //Algoritmo que pida los puntos centrales x1,y1,x2,y2 y los radios r1,r2 de dos
//circunferencias y las clasifique en uno de estos estados:
//exteriores
//tangentes exteriores
//secantes
//tangentes interiores
//interiores
//concéntricas
var x1 = 2.0
var y1 = 4.0
var r1 = 6.0
var x2 = 3.0
var y2 = 5.0
var r2 = 3.0

var distanciaCentros = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2))

if x1 == x2 && y1 == y2 && r1 == r2 {
    print("Repetitivos")
} else if x1 == x2 && y1 == y2 && r1 != r2{
    print("Concentricos")
} else if distanciaCentros == r1 + r2 {
    print("Tangentes exteriores")
} else if distanciaCentros == abs(r2 - r1){
    print("Tangentes interiores")
} else if distanciaCentros > abs(r2 - r1){
    print("Interiores")
} else if distanciaCentros > r2 + r1{
    print("Exteriores")
} else if distanciaCentros < r2 + r1 && distanciaCentros > r2 - r1{
    print("Secantes")
}



//Ej7. //Crea una aplicación que pida un número y calcule su factorial (El factorial de
//un número es el producto de todos los enteros entre 1 y el propio número y se
//representa por el número seguido de un signo de exclamación.
var numFactorial = 4, factorial = 1
while (numFactorial != 0) {
    factorial = factorial * numFactorial
    numFactorial -= 1
}
print(factorial)

//Ej8. //Algoritmo que cree un array con 10 numeros. Debe imprimir la suma
// y la media de todos los números introducidos.
var diezNumeros1: [Int] = []
var suma = 0
var media:Double = 0
for _ in 0...9 {
    diezNumeros1.append(Int(arc4random_uniform(200) + 0))
}
for miNum in diezNumeros1 {
    suma+=miNum
}
media = Double(suma / 10)
print("La suma de los numeros es \(suma) y su media es \(media)")

//Ej9. //Algoritmo que cree un array con 10 numeros. El programa debe informar de cuantos números
//introducidos son mayores que 0, menores que 0 e iguales a 0.
var diezNumeros: [Int] = []
var mayor = 0, menor = 0, igual = 0
for i in diezNumeros {
    diezNumeros.append(Int(arc4random_uniform(400) + 0) - 200)
    if (diezNumeros[i] > 0) {
        mayor+=1
    } else if (diezNumeros[i] < 0) {
        menor+=1
    } else {
        igual+=1
    }
}
print("Hay \(mayor) numeros mayores que 0, \(menor) menores que 0 y \(igual) iguales a 0")


//Ej 10 //Escribir un programa que imprima todos los números pares entre dos números
var par1 = 3, par2 = 15
for i in stride(from: par1, through: par2, by: 1) {
    if i % 2 == 0 {
        print(i)
    }
}

//Ej 11 ////Una empresa tiene el registro de las horas que trabaja diariamente un empleado
//durante la semana (seis días), así como el sueldo que recibirá por las horas trabajadas.
//Las horas estan en un array y el precio hora esta en 30€
var semana = [8,8,9,7,6,8]
var paga = 0

for dia in semana{
    paga += dia * 30
}
print(paga)
