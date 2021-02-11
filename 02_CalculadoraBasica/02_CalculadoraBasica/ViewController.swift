//
//  ViewController.swift
//  02_CalculadoraBasica
//
//  Created by Pablo Díaz Sanz on 11/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    
    @IBOutlet weak var num2: UITextField!
   
    @IBOutlet weak var respuesta1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func suma(_ sender: Any) {
        respuesta1.text = String(Int(num1.text!)! + Int(num2.text!)!)
    }
    
    @IBAction func resta(_ sender: Any) {
        respuesta1.text = String(Int(num1.text!)! - Int(num2.text!)!)
    }
    
    @IBAction func multiplicacion(_ sender: Any) {
        respuesta1.text = String(Int(num1.text!)! * Int(num2.text!)!)
    }
    
    @IBAction func division(_ sender: Any) {
        respuesta1.text = String(Int(num1.text!)! / Int(num2.text!)!)
    }
}

