//
//  ViewController.swift
//  navegacion
//
//  Created by Alumno on 29/09/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class RosaController: UIViewController {
    
    var nombre = ""
    var matricula = ""
    var promedio = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doTapJose(_ sender: Any) {
        
        nombre = "Jose"
        matricula = "189089"
        promedio = "9"
        
        self.performSegue(withIdentifier: "goToWhite", sender: self)
    }
    
    @IBAction func doTapAna(_ sender: Any) {
        
        nombre = "Ana"
        matricula = "190089"
        promedio = "9.5"
        
        self.performSegue(withIdentifier: "goToWhite", sender: self)
    }
    
    @IBAction func doTapPedro(_ sender: Any) {
        
        nombre = "Pedro"
        matricula = "179089"
        promedio = "8"
        
        self.performSegue(withIdentifier: "goToWhite", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! WhiteController
        
        destino.nombre = nombre
        destino.matricula = matricula
        destino.promedio = promedio
    }
}

