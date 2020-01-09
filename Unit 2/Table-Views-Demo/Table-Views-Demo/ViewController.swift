//
//  ViewController.swift
//  Table-Views-Demo
//
//  Created by Oscar Victoria Gonzalez  on 11/11/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Topics covered:
    /*
     - UITableViews
     - cells can be satatic or dynamic
     - prototype cell
     - reuse identifier e.g "countryCell"
     - dataSource object (we need To set  the DATASOURCE OBJECT e.g tableView.dataSource = self, configured in viewDidLoad
     - cellForRow
     - UITableViewDataSource - 2 required methods
     - first required method is numberOfRows()
     - second required method is cellForRow()
     - dequeueCell - recycles a cell if in memory, if not it creates a new cell
     */
    
    // MARK: outlests and properties
    
    // data for the table view
  
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    private var countries = [Country]() { // empty array 
        
        didSet {
            tableView.reloadData()
        }
        
        
    }
    
    private var sortAscending = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // step 1: set the data source object
        // meaning the object that will provide the table view its data source[cell data]
        tableView.dataSource = self // self is the viewController instance
        sortData(true)
        
        
        print("There are \(Country.countries.count) countries in our struct")
        
        
    }


    @IBAction func sortButtonPressed(_ sender: UIBarButtonItem) {
        sortData(sortAscending)
        sortAscending.toggle()
    }
    
    func sortData(_ sortAscending: Bool ) {
        if sortAscending {
            countries = Country.countries.sorted { $0.name < $1.name}
            // update the UIBarButtonItem title's that we dragged into interface builder
            navigationItem.rightBarButtonItem?.title = "Sort decending"
        } else {
            countries = Country.countries.sorted { $0.name > $1.name }
            navigationItem.rightBarButtonItem?.title = "Sort ascending"
        }
    }
    
    
}

// step 2: Conform to UITableViewDataSource

extension ViewController: UITableViewDataSource {
    // 2 required methods
    
    // method 1: numberOfRows
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    // method 2:
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // dequeueReusableCell: recycy a cell if it exist
        // if the cell does not exist a new cell is created
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        
        // get the object at the current indexPath
        
        let country = countries[indexPath.row]
        
        // configure the cell
        cell.textLabel?.text = country.name
        cell.detailTextLabel?.text = country.description
        return cell
    }
}
