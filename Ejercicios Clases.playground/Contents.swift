import UIKit

/**
 Ejercicio de clases o estructura
 
 Implementar las siguientes clases o estructuras y sus relaciones (diseño del modelo):
 
 Queremos formar un ordenador, el ordenador tendr\'e1 los siguientes propiedades:
    1) precio
    2) nombre del equipo
    3) Varios modulos de memoria ram, la ram tendrá las siguientes propiedades:
             a) capacidad de almacenamiento
             b) fabricante
             c) si tiene RGB
    4) Tendremos un procesador, el procesador tendr\'e1 las siguientes propiedades\
             a) velocidad del procesador
             b) numero de cores
             c) numero de hilos
             d) fabricante
    5) podremos tener varios unidades de almacenamiento, tendr\'e1n las siguientes propiedades\
             a) capacidad de almacenamiento
             b) fabricante
             c) tipo de unidad (HD, SSD, Nvme)
    6) Tendr\'e1 una tarjeta grafica, con las siguientes propiedades
             a) ram
             b) consumo
             c) Cuda cores
             d) velocidad
 
 Tareas:
 1) implementar el sistema de clases o de estructuras (o mezcla)
 2) Instanciar un ordenador completo con todos sus objetos con informacion.
 */

class MemoriaRAM{
    var capacidadDeAlmacenamiento: Int = 0
    var fabricante: String = ""
    var RGB: Bool = false
}

struct Procesador{
    var velocidadDelProcesador: Int
    var numeroDeCores: Int
    var numeroDeHilos: Int
    var fabricante: String
}

class UnidadDeAlmacenamiento{
    var capacidadDeAlmacenamiento: Int = 0
    var fabricante: String = ""
    var tipoDeUnidad: String = ""
}

struct TarjetaGrafica{
    var memoriaRam: Int
    var consumo: Int
    var cudaCores: Int
    var velocidad: Int
}

struct Ordenador{
    var marca: String
    var modelo: String
    var memoriaRAM: MemoriaRAM
    var procesador: Procesador
    var unidadDeAlmacenamiento: UnidadDeAlmacenamiento
    var tarjetaGrafica: TarjetaGrafica
    var precio: Int
}

var ram = MemoriaRAM()
var procesador = Procesador(velocidadDelProcesador: 200, numeroDeCores: 4, numeroDeHilos: 4, fabricante: "Nvidia")
var uAlmacenamiento = UnidadDeAlmacenamiento()
var tarGrafica = TarjetaGrafica(memoriaRam: 8, consumo: 150, cudaCores: 2, velocidad: 1080)

let mac = Ordenador(marca: "Apple", modelo: "MacBook Pro", memoriaRAM: ram, procesador: procesador, unidadDeAlmacenamiento: uAlmacenamiento, tarjetaGrafica: tarGrafica, precio: 1399)
