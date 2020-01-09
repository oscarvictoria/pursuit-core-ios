//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Oscar Victoria Gonzalez  on 10/28/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Implicit unwrapping of an optional
    // weak is a memory optimizing feature we will talk more about, further in the unit. baseclly thr view controller will have a weak reference to the label outlet.
    @IBOutlet weak var displayLabel: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        view.backgroundColor = UIColor.blue
    }

 
    @IBAction func colorChangeButtonPress(_ sender: UIButton) {
        let newColor: (color: UIColor?, name: String)
            
        switch sender.tag  { // Int
        case 0:
            newColor = (.red,"Red")
        case 1:
            newColor = (.green, "Green")
        case 2:
            newColor = (.blue, "Blue")
                default:
                newColor = (.white, "White")
        }
        view.backgroundColor = newColor.color
        displayLabel.text = "The background color is \(newColor.name)"
    }
}

