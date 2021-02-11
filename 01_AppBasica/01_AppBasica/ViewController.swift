//
//  ViewController.swift
//  01_AppBasica
//
//  Created by Pablo Díaz Sanz on 4/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var label_nombre: UILabel!
    
    @IBOutlet weak var textfield_nombre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: Actions
    
    @IBAction func cambiar_nombre_label(_ sender: Any) {
        label_nombre.text = textfield_nombre.text
        textfield_nombre.text = ""
    }
    
}

