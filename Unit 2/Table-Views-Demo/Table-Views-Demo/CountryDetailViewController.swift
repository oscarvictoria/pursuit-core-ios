//
//  CountryDetailViewController.swift
//  Table-Views-Demo
//
//  Created by Oscar Victoria Gonzalez  on 11/12/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class CountryDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    // expected data is a Country object
    // this property gets set in the prepareForSegue method
    // from the ContinentsViewController
    
    var country: Country!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named:("\(country.fullImageName)"))
        title = country.name
        
    
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
