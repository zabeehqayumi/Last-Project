//
//  PhilipsTableViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/22/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class PhilipsTableViewController: UITableViewController {
    
    var arr : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.tableView.backgroundColor = UIColor.black
        


    }
    

   

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        
        return cell
    }

    @IBAction func doneButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
