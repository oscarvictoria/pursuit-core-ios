//
//  ViewController.swift
//  Recepies
//
//  Created by Oscar Victoria Gonzalez  on 10/29/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
 // Outlets
    

    @IBOutlet weak var RecepieImage: UIImageView!
    
    @IBOutlet weak var RecepieName: UILabel!
    
    @IBOutlet weak var RecepieDescription: UITextView!
    
    
    let recipes = Recipe.getRecipes()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateRecipeAtIndex(index: 0)
    }

    
    @IBAction func RecepieChange(_ sender: UIButton) {
        updateRecipeAtIndex(index: sender.tag )
    }
    
    
    func updateRecipeAtIndex(index: Int) {
        // recipe button tags will be 0,1, and 2
         let recipe = recipes[index] // value of index e. 0,1,2
        //2.
        // update the UI elemets using the current Recipe instance above
        
        RecepieImage.image = recipe.image
        RecepieName.text = recipe.name
    }
    

}

