//
//  ContinentsViewController.swift
//  Table-Views-Demo
//
//  Created by Oscar Victoria Gonzalez  on 11/12/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ContinentsViewController: UIViewController {
    

    
// 1: connect the tableView using an outlet
// 2: set the view controller as the data source for the table view in viewDidLoad
// 3: use an extension on the ContinentsViewCpntroller and conform to UITableViewDataSource
// 4: Implement required methods
    
    @IBOutlet weak var tableView: UITableView! // 1: connect the tableView using an outlet
    
    private var continents = [[Country]]() {
        didSet {
            tableView.reloadData() // this reloads all the content of the table view
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self // 2: set the view controller as the data source for the table view in viewDidLoad
        loadData()
    }
    func loadData() {
        continents = Country.getSections()
        // didSet will get called on continents and table view will be reloaded
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepareForSegway")
        // here is where we pass data from this view controller (ContinentsViewController) to the CountryDetailViewController.
        
        // we will pass the selected country the CountryDetailViewController
        
        // segue has a .source and a .destination property
        
        guard let countryDVC = segue.destination as? CountryDetailViewController,
            let indezPath = tableView.indexPathForSelectedRow else {
            return // exits the function 
        }
        
        // set country on countryDVC
        countryDVC.country = continents[indezPath.section][indezPath.row]
    }
    
}

// 3: use an extension on the ContinentsViewController and conform to UITableViewDataSource
extension ContinentsViewController: UITableViewDataSource {
    
    // 4: Implement required methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // the data for this tableView is an array of arrays [[Country]]
        // no longer can we simply return continents.count
        // this would return 5 in our case, since we have 5 sections(continents) currently
        
        // we need to return the sections's count
        //[sections].count on the array of array's
        return continents[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Step 1:
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        
        //Stpe 2:  we need to get a current object at the current indexPath
        let country = continents[indexPath.section][indexPath.row]
        
        // Step 3: configured cell
        cell.textLabel?.text = country.name
        cell.detailTextLabel?.text = country.description
     // cell.detailTextLabel?.numberOfLines = 0
        cell.imageView?.image = UIImage(named: "\(country.thumbnailImageName)")
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return continents.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return continents[section].first?.continent
    }
}
