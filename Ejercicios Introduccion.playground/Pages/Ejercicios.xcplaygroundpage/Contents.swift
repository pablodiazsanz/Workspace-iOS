import Foundation

//Ej1. Calcular el perí­metro y área de un rectángulo dada su base y su altura.
let base = 2, altura = 3

var perimetro = (base*2 + altura*2) / 2
var area = (base * altura) / 2

print(perimetro)
print(area)

//Ej2. Dados los catetos de un triángulo rectángulo, calcular su hipotenusa. funcion sqrt()
//  Nota: en online no funciona
let b: Double = 3, c: Double = 4

var a: Double = sqrt(b*b + c*c)

print(a)

//Ej3. Dados dos números, mostrar la suma, resta, división y multiplicación de ambos.
let num1 = 4, num2 = 2

var suma = num1 + num2
var resta = num1 - num2
var multiplicacion = num1 * num2
var division = num1 / num2

print("Suma: \(suma), Resta: \(resta), Multiplicacion: \(multiplicacion), Division: \(division)")

//Ej4. Escribir un programa que convierta un valor dado en grados Fahrenheit a grados Celsius.
let farenheit = 73
let celsius = (farenheit - 32) * 5 / 9

print(celsius)

//Ej5. Calcular la media de tres números pedidos por teclado
let numb1:Double = 3, numb2:Double = 5, numb3:Double = 9

var media = (numb1 + numb2 + numb3) / 3

print(media)

//Ej6. Un vendedor recibe un sueldo base mas un 10% extra por comision de sus ventas, el vendedor desea saber cuanto dinero obtendrá por concepto de comisiones por las tres ventas que realiza en el mes y el total que recibirá en el mes tomando en cuenta su sueldo base y comisiones.
let sueldo1:Double = 3600

let sueldo_base = sueldo - sueldo1*0.1

print(sueldo_base)


//Ej7. Un alumno desea saber cual será su calificación final en la materia de IOS
//    Dicha calificación se compone de los siguientes porcentajes:
//    * 55% del promedio de sus tres calificaciones parciales.
//    * 30% de la calificación del examen final.
//    * 15% de la calificación de un trabajo final.
let parcial1 = 7.0, parcial2 = 5.0, parcial3 = 8.0, ex_final = 6.5, tr_final = 8.5

let promedio = ((parcial1 + parcial2 + parcial3) / 3) * 0.55 + ex_final * 0.3 + tr_final * 0.15

print(promedio)

//Ej8. Escribir un algoritmo para calcular la nota final de un estudiante, considerando que: por cada respuesta correcta 5 puntos, por una incorrecta -1 y por respuestas en blanco 0. Imprime el resultado obtenido por el estudiante.
var nota = 0, preguntas:Int = 9

var respuesta = ["Perro", "Gato", "Raton", "Tiburon", "Leon", "Tigre", "Serpiente", "Araña", "Delfin", "Mosca"]

var solucion = ["Gato", "Gato", "Raton", "Perro", "Leon", "Tigre", "Serpiente", "Perro", "Delfin", "Perro"]

for _ in 1...preguntas {
    if respuesta == solucion {
        nota += 5
    } else {
        if nota != 0 {
            nota -= 1
        } else {
            nota = 0
        }
    }
}

print(nota)

//Ej9. Calcula el sueldo de un trabajador, cuyo valor es su sueldo base más un numero de horas extra trabajadas, pero teniendo en cuenta que el dicho numero de horas puede ser nulo
var sueldo_base1:Double = 2675, horas_extra: Double? = nil

var sueldo_extra = (horas_extra ?? 0) * 6.5

var sueldo:Double = sueldo_base1 + sueldo_extra

print(sueldo)
