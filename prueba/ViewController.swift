//
//  ViewController.swift
//  prueba
//
//  Created by pepe Malpica on 2/9/19.
//  Copyright © 2019 pepe Malpica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNumber: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    
    var result: Int?
    var number: Int?
    var msg: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnCalculate(_ sender: Any) {
    
        number = Int(tfNumber.text!)
        
        if isPar(mNumber: number!) {
            result = factorial(mNumber: number!)
            msg = "El número: \(number!) es par, y el resultado de su factorial es: \(result!)";
        }else{
            result = factorialSuma(mNumber: number!)
            msg = "El número: \(number!) es impar, y el resultado de su factorial con suma es: \(result!)";
        }
        lbResult.text = msg
    }
    
    func isPar( mNumber: Int ) -> Bool {
        return mNumber % 2 == 0;
    }
    
    func factorial( mNumber: Int ) -> Int {
        if mNumber <= 1 {
            return 1
        }else{
            return mNumber * factorial(mNumber: mNumber-1)
        }
    }
    
    func factorialSuma( mNumber: Int ) -> Int {
        if mNumber <= 1 {
            return 1
        }else{
            return mNumber + factorialSuma(mNumber: mNumber-1)
        }
    }
    
    
    
}

