//
//  SettingsVC.swift
//  UserDefaults
//
//  Created by Oscar Victoria Gonzalez  on 1/13/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class SettingsVC: UITableViewController {
    
//    enum UnitMesurements: String {
//        case miles = "Miles"
//        case kilometers = "Kilometers"
//    }
    
//    enum Image: String {
//        case bike = "bike"
//        case run = "run"
//    }
    
    

@IBOutlet weak var theImage: UIImageView!
    
@IBOutlet weak var unitMesurementsLabel: UILabel!
// When clicked on the cell, miles should change to kilomenters , toggle()
    
    var currentUnit = UnitMesurements.miles {
        didSet {
            // update the unit mesurement label
            unitMesurementsLabel.text = currentUnit.rawValue // "Miles or Kilometers
            // code for userDefaults
            UserSettings.shared.updateUnitMesurements(with: currentUnit)
        }
    }
    
    var currentImage = Image.bike {
        didSet {
            theImage.image = UIImage(named: currentImage.rawValue)
            UserSettings.shared.updateImage(with: currentImage)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    private func updateUI() {
        if let unitMesurements = UserSettings.shared.getUnitMesurements() {
            currentUnit = unitMesurements
        }
        if let image = UserSettings.shared.getImage() {
            currentImage = image
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            toggleUserMesurement()
            // toggle unit mesurremnts lable
        case 1:
            toggleImage()
            print("cell two was clicked")
        default:
            break
        }
    }
    
    private func toggleUserMesurement() {
        currentUnit = currentUnit == UnitMesurements.miles ? UnitMesurements.kilometers : UnitMesurements.miles
    }
    
    private func toggleImage() {
        currentImage = currentImage == Image.bike ? Image.run : Image.bike
    }

}
