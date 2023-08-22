//
//  ViewController.swift
//  iimc
//
//  Created by Wilgner Schuertz on 22/08/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pesoTextField: UITextField!
    @IBOutlet weak var labelResultado: UILabel!
    @IBOutlet weak var alturaTextField: UITextField!
    
    @IBAction func buttonCalcular(_ sender: UIButton) {
        guard let pesoTxt = pesoTextField.text,
              let alturaTxt = alturaTextField.text,
              let peso = Double(pesoTxt),
              let altura = Double(alturaTxt) else {
                labelResultado.text = "Está faltando algo parceiro"
            return
        }

        let alturaEmMetros = altura / 100.0
        let imc = peso / (alturaEmMetros * alturaEmMetros)
        labelResultado.text = String(format: "IMC: %.2f", imc)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

