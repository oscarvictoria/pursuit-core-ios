//
//  ViewController.swift
//  Delegation Review
//
//  Created by Oscar Victoria Gonzalez  on 11/6/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var myTextField: UITextField!
    
    
    
    
    @IBOutlet weak var blueTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        myTextField.delegate = self
        blueTextField.delegate = self
        myTextField.backgroundColor = .yellow
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text == "oscar" {
            textField.resignFirstResponder()
            print("its oscar")
            return true
        } else {
            return false
        }
        
    }
    
}

