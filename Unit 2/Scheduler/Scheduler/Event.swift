//
//  Event.swift
//  Scheduler
//
//  Created by Oscar Victoria Gonzalez  on 11/20/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import Foundation

struct Event {
    var date: Date
    var name: String
    
    static func getTestData() -> [Event] {
        var events = [Event]()
        let eventNames = ["Code", "Unit Assesment", "iOS Soho"]
        
        for eventName in eventNames {
            let event = Event(date: Date(), name: eventName)
            events.append(event)
        }
        
        
        
        return events
    }
}
