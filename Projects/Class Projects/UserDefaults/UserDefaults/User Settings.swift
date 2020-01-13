//
//  User Settings.swift
//  UserDefaults
//
//  Created by Oscar Victoria Gonzalez  on 1/13/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import Foundation

enum Image: String {
    case bike = "bike"
    case run = "run"
}

enum UnitMesurements: String {
      case miles = "Miles"
      case kilometers = "Kilometers"
  }

struct UserSettingKey {
    static let unitMesurements = "Unit Mesurements"
    static let photo = "Unit Photo"
}



class UserSettings {
    // a singletons Initialzation need to be private
    private init() {
        
    }
    
  
    
    static let shared = UserSettings()
    
    // set
    func updateUnitMesurements(with unit: UnitMesurements) {
        // Storing or persisting the unit mesurement value to UserDefaults (Device or simulator as permanent storage)
        // UserDefaults.standard is a singleton in iOS that gives us access to saving and retrieving stored data in the device
        UserDefaults.standard.set(unit.rawValue, forKey: UserSettingKey.unitMesurements)
    }
    
    // retrieve
    func getUnitMesurements() -> UnitMesurements? {
        guard let unitMesurement = UserDefaults.standard.object(forKey: UserSettingKey.unitMesurements) as? String else  {
            return nil
        }
        return UnitMesurements(rawValue: unitMesurement)
    }
    
    
    
    func updateImage(with photo: Image ) {
        UserDefaults.standard.set(photo.rawValue, forKey: UserSettingKey.photo)
    }
    
    func getImage() -> Image? {
        guard let images = UserDefaults.standard.object(forKey: UserSettingKey.photo) as? String  else {
            return nil
        }
        return Image(rawValue: images)
    }
}
