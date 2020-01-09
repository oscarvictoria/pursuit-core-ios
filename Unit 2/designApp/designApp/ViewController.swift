//
//  ViewController.swift
//  designApp
//
//  Created by Oscar Victoria Gonzalez  on 11/7/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController,
UITextFieldDelegate { // Conforming to a delegate
    
    @IBOutlet weak var calculatorTextField: UITextField! // connecting an outlet
    
    let calcBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorTextField.delegate = self // delegate to self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        guard let unwrappedString = textField.text else {
            return false
        }
        
        guard let number = Int(unwrappedString) else {
            return false
        }
      let result = calcBrain.simple.doublesNumber(input: number)
        print(result)
        return true
    }

}

