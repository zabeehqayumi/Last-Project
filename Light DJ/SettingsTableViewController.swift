//
//  SettingsTableViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/22/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit


struct cellData {
    let cell : Int!
    let image : UIImage!
    let text : String!

}

class SettingsTableViewController: UITableViewController {
    
    var arrOfData = [cellData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // cutomize cell
        
        self.tableView.backgroundColor = UIColor.black
        
        arrOfData = [cellData(cell: 1, image: #imageLiteral(resourceName: "firstCell"), text: ""),
                     cellData(cell: 2, image: #imageLiteral(resourceName: "selectIcon"), text: "")]



    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrOfData.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Configure the cell...
        
        
        if arrOfData[indexPath.row].cell == 1 {
            
            let cell = Bundle.main.loadNibNamed("FirstTableViewCell", owner: self, options: nil)?.first as! FirstTableViewCell
            
            cell.firstCellImg.image = arrOfData[indexPath.row].image
            
            return cell
            
            
        }
        else if arrOfData[indexPath.row].cell == 2 {
            
           let cell = Bundle.main.loadNibNamed("SecondTableViewCell", owner: self, options: nil)?.first as! SecondTableViewCell
     
            return cell

            
        }
        else{
            // default
            
          let cell =  Bundle.main.loadNibNamed("SecondTableViewCell", owner: self, options: nil)?.first as! FirstTableViewCell
         
            return cell

            
        }
        
        
        
    }
    
   override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    if arrOfData[indexPath.row].cell == 1 {
        
        return 250
        

        
    }
    else if arrOfData[indexPath.row].cell == 2 {
        
        return 50
        
    }
    else{
        // default
        return 50
        
    }
    
    
    
    
            }

    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
