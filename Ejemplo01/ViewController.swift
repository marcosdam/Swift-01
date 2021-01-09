//
//  ViewController.swift
//  Ejemplo01
//
//  Created by Marcos Ledesma on 15/12/2020.
//  Copyright © 2020 Marcos Ledesma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // label contador de la vista
    @IBOutlet weak var lblContador: UILabel!
    // contador
    var contador = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // incrementar contador
    @IBAction func btnContadorClick() {
        contador += 1
        lblContador.text = "Has tocado \(contador) veces"
    }
    
    // método para el segue (transición de view1 a view2)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // definir identificador del segue (ventana2)
        let idSegue = segue.identifier
        
        switch idSegue {
        case "ventana2":
            // me apropio de la ventana que voy a abrir
            let ventana2 = segue.destination as! View2Controller
            ventana2.intentos = contador
        default:
            print("No escuentro el segue")
        }
    }
}

