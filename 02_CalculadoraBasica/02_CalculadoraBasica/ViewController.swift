//
//  ViewController.swift
//  02_CalculadoraBasica
//
//  Created by Pablo Díaz Sanz on 11/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    var numero1:Int = 0
    var numero2:Int = 0
    var resultado:Int = 0
    var operador:String = ""
    
    @IBOutlet weak var operacion: UILabel!
    @IBOutlet weak var suma: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ac(_ sender: Any) {
        operacion.text = "Calculadora"
        numero1 = 0
        numero2 = 0
    }
    @IBAction func num1(_ sender: Any) {
        if operacion.text == "Calculadora" || operacion.text == "0" || operacion.text == "+" || operacion.text == "-" || operacion.text == "*" || operacion.text == "/"  || operacion.text == String(resultado){
            operacion.text = "1"
        } else {
            operacion.text?.append("1")
        }
    }
    @IBAction func num2(_ sender: Any) {
        if operacion.text == "Calculadora" || operacion.text == "0" || operacion.text == "+" || operacion.text == "-" || operacion.text == "*" || operacion.text == "/" || operacion.text == String(resultado) {
            operacion.text = "2"
        } else {
            operacion.text?.append("2")
        }
    }
    @IBAction func num3(_ sender: Any) {
        if operacion.text == "Calculadora" || operacion.text == "0" || operacion.text == "+" || operacion.text == "-" || operacion.text == "*" || operacion.text == "/" || operacion.text == String(resultado) {
            operacion.text = "3"
        } else {
            operacion.text?.append("3")
        }
    }
    @IBAction func num4(_ sender: Any) {
        if operacion.text == "Calculadora" || operacion.text == "0" || operacion.text == "+" || operacion.text == "-" || operacion.text == "*" || operacion.text == "/" || operacion.text == String(resultado) {
            operacion.text = "4"
        } else {
            operacion.text?.append("4")
        }
    }
    @IBAction func num5(_ sender: Any) {
        if operacion.text == "Calculadora" || operacion.text == "0" || operacion.text == "+" || operacion.text == "-" || operacion.text == "*" || operacion.text == "/" || operacion.text == String(resultado) {
            operacion.text = "5"
        } else {
            operacion.text?.append("5")
        }
    }
    @IBAction func num6(_ sender: Any) {
        if operacion.text == "Calculadora" || operacion.text == "0" || operacion.text == "+" || operacion.text == "-" || operacion.text == "*" || operacion.text == "/" || operacion.text == String(resultado) {
            operacion.text = "6"
        } else {
            operacion.text?.append("6")
        }
    }
    @IBAction func num7(_ sender: Any) {
        if operacion.text == "Calculadora" || operacion.text == "0" || operacion.text == "+" || operacion.text == "-" || operacion.text == "*" || operacion.text == "/" || operacion.text == String(resultado) {
            operacion.text = "7"
        } else {
            operacion.text?.append("7")
        }
    }
    @IBAction func num8(_ sender: Any) {
        if operacion.text == "Calculadora" || operacion.text == "0" || operacion.text == "+" || operacion.text == "-" || operacion.text == "*" || operacion.text == "/" || operacion.text == String(resultado) {
            operacion.text = "8"
        } else {
            operacion.text?.append("8")
        }
    }
    @IBAction func num9(_ sender: Any) {
        if operacion.text == "Calculadora" || operacion.text == "0" || operacion.text == "+" || operacion.text == "-" || operacion.text == "*" || operacion.text == "/" || operacion.text == String(resultado) {
            operacion.text = "9"
        } else {
            operacion.text?.append("9")
        }
    }
    @IBAction func num0(_ sender: Any) {
        if operacion.text == "Calculadora" || operacion.text == "0" || operacion.text == "+" || operacion.text == "-" || operacion.text == "*" || operacion.text == "/" || operacion.text == String(resultado) {
            operacion.text = "0"
        } else {
            operacion.text?.append("0")
        }
    }
    @IBAction func suma(_ sender: Any) {
        if operacion.text != "Calculadora" && numero1 == 0 {
            numero1 = Int(operacion.text!)!
            operador = "+"
        }
        operacion.text = "+"
    }
    @IBAction func resta(_ sender: Any) {
        if operacion.text != "Calculadora" && numero1 == 0 {
            numero1 = Int(operacion.text!)!
            operador = "-"
        }
        operacion.text = "-"
    }
    @IBAction func multiplicacion(_ sender: Any) {
        if operacion.text != "Calculadora" && numero1 == 0 {
            numero1 = Int(operacion.text!)!
            operador = "*"
        }
        operacion.text = "*"
    }
    @IBAction func division(_ sender: Any) {
        if operacion.text != "Calculadora" && numero1 == 0 {
            numero1 = Int(operacion.text!)!
            operador = "/"
        }
        operacion.text = "/"
    }
    @IBAction func resultado(_ sender: Any) {
        if operacion.text != "Calculadora" && numero1 != 0 {
            numero2 = Int(operacion.text!)!
            switch operador {
            case "+":
                resultado = numero1 + numero2
            case "-":
                resultado = numero1 - numero2
            case "*":
                resultado = numero1 * numero2
            case "/":
                resultado = numero1 / numero2
            default:
                resultado = 0
            }
        }
        operacion.text = String(resultado)
        numero1 = 0
        numero2 = 0
    }
}
