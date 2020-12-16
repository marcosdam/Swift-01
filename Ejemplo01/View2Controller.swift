//
//  View2Controller.swift
//  Ejemplo01
//
//  Created by Marcos Ledesma on 15/12/2020.
//  Copyright © 2020 Marcos Ledesma. All rights reserved.
//

import UIKit

class View2Controller: UIViewController {

    // label de la view 2
    @IBOutlet weak var lblDestino: UILabel!
    
    // La view 1 le dará valor a la var intentos antes de que se abra
    var intentos = 0
    
    // viewDidLoad -> similar a onCreate de Android
    override func viewDidLoad() {
        super.viewDidLoad()

        // Muestra el valor de intentos en el label
        lblDestino.text = "Veces presionado: \(intentos)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
