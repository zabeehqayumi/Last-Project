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
    var headerTitle: [String] = ["Select your light group:"]
    var FooterTitle: [String] = ["Lights Not Connected"]


    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.backgroundColor = UIColor.black
        
        

    }
    

   

    // MARK: - Table view data source
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
       // cell.textLabel?.text = arr[indexPath.row]
        
        return cell
    }
    
    //Header title
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerTitle[section]
    }
    
    //Footer title
    
//    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        return FooterTitle[section]
//    }
    
    // Header design
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        // Custom design
        
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
        header.backgroundView?.backgroundColor = UIColor.black
        header.textLabel?.font = UIFont(name: "Futura", size: 22)!
        
    }
    // Footer design
//    override func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
//
//        // Custom design
//
//        let header = view as! UITableViewHeaderFooterView
//        header.textLabel?.textColor = UIColor.gray
//        header.backgroundView?.backgroundColor = UIColor.black
//        header.textLabel?.font = UIFont(name: "Futura", size: 15)!
//
//
//    }
    
    // Done button
    @IBAction func doneButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
