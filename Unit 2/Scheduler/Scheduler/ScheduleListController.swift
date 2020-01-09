//
//  ViewController.swift
//  Scheduler
//
//  Created by Oscar Victoria Gonzalez  on 11/20/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ScheduleListController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var isEditingTableView = false {
        didSet { // property observer
            // toggle editing mode of table view
            tableView.isEditing =  isEditingTableView
            
            // toggle bar button item's title between "Edit" and "Done"
            navigationItem.leftBarButtonItem?.title = isEditingTableView ? "Done" : "Edit"
        }
    }
    
    
    var events = [Event]()
    
    var some = Event.getTestData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        events = Event.getTestData()
    }
    
    
    
    
    
    
    @IBAction func newEvent(segue: UIStoryboardSegue) {
        
        guard let createEventController = segue.source as? CreateEventController,
            let createdEvent = createEventController.event else {
            fatalError("failed to access CreateEventController")
        }
        // insert into our events array
        // 1. update the data model. e.g update the events array
        events.insert(createdEvent, at: 0) // which is the top of the events array
        
        // create an indexPath to be inserted
        let indexPath = IndexPath(row: 0, section: 0) // will represent top of the tableView
        
        // use indexPath to insert into tableView
        // We need to update the table view
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
    
    @IBAction func editButoonPressed(_ sender: UIBarButtonItem) {
        isEditingTableView.toggle() // changes a boolean value
    }
    
    
}




extension ScheduleListController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath)
        let event = events[indexPath.row]
        cell.textLabel?.text = event.name
        cell.detailTextLabel?.text = event.date.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .insert:
            // only gets called if insertion controll exist and gets selected
            print("inserting...")
        case .delete:
            print("deleting...")
            // 1. remove item for the data model e.g events
            events.remove(at: indexPath.row) // remove event from events array.
            // 2. update the table view
            tableView.deleteRows(at: [indexPath], with: .fade)
        case .none:
            print("none...")
        @unknown default:
            print("some default")
        }
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let eventToMove = events[sourceIndexPath.row] // save the event being moved
        events.remove(at: sourceIndexPath.row)
        events.insert(eventToMove,at: destinationIndexPath.row)
        
    }
}
