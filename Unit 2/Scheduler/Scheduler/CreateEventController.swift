//
//  CreateEventController.swift
//  Scheduler
//
//  Created by Oscar Victoria Gonzalez  on 11/20/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class CreateEventController: UIViewController {
    
@IBOutlet weak var createTextField: UITextField!
@IBOutlet weak var datePicker: UIDatePicker!
    
    var event: Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    createTextField.delegate = self
        event = Event(date: Date(), name: "Swift")
    }
    
    @IBAction func datePickerChanged(sender: UIDatePicker) {
        event?.date = sender.date
    }
}

extension CreateEventController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        event?.name = textField.text ?? "no event name"
        return true
    }
    
}
