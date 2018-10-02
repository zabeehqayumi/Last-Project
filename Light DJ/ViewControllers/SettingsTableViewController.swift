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
                     cellData(cell: 2, image: #imageLiteral(resourceName: "selectIcon"), text: ""),
                     cellData(cell: 3, image: #imageLiteral(resourceName: "selectIcon"), text: ""),
                     cellData(cell: 4, image: #imageLiteral(resourceName: "selectIcon"), text: ""),
                     cellData(cell: 5, image: #imageLiteral(resourceName: "visualizerSettingPic"), text: ""),
                     cellData(cell: 6, image: #imageLiteral(resourceName: "visualizerSettingPic"), text: ""),
                     cellData(cell: 7, image: #imageLiteral(resourceName: "visualizerSettingPic"), text: ""),
                     cellData(cell: 8, image: #imageLiteral(resourceName: "nanoLeafSettings"), text: ""),
                     cellData(cell: 9, image: #imageLiteral(resourceName: "nanoLeafSettings"), text: ""),
                     cellData(cell: 10, image: #imageLiteral(resourceName: "appPreferences"), text: ""),
                     cellData(cell: 11, image: #imageLiteral(resourceName: "appPreferences"), text: "")]
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
        else if arrOfData[indexPath.row].cell == 3 {
            
            let cell = Bundle.main.loadNibNamed("ThirdTableViewCell", owner: self, options: nil)?.first as! ThirdTableViewCell
            return cell
            
        }
        else if arrOfData[indexPath.row].cell == 4 {
            
            let cell = Bundle.main.loadNibNamed("FourthTableViewCell", owner: self, options: nil)?.first as! FourthTableViewCell
            return cell
            
        }
        else if arrOfData[indexPath.row].cell == 5 {
            
            let cell = Bundle.main.loadNibNamed("FifthTableViewCell", owner: self, options: nil)?.first as! FifthTableViewCell
            cell.img.image = arrOfData[indexPath.row].image
            return cell
            
        }
        else if arrOfData[indexPath.row].cell == 6 {
            
            let cell = Bundle.main.loadNibNamed("SixthTableViewCell", owner: self, options: nil)?.first as! SixthTableViewCell
            return cell
            
        }
        else if arrOfData[indexPath.row].cell == 7 {
            
            let cell = Bundle.main.loadNibNamed("SeventhTableViewCell", owner: self, options: nil)?.first as! SeventhTableViewCell
            return cell
            
        }
        else if arrOfData[indexPath.row].cell == 8 {
            
            let cell = Bundle.main.loadNibNamed("EighthTableViewCell", owner: self, options: nil)?.first as! EighthTableViewCell
            cell.img.image = arrOfData[indexPath.row].image

            return cell
            
        }
        else if arrOfData[indexPath.row].cell == 9 {
            
            let cell = Bundle.main.loadNibNamed("NinethTableViewCell", owner: self, options: nil)?.first as! NinethTableViewCell
            
            return cell
            
        }
        else if arrOfData[indexPath.row].cell == 10 {
            
            let cell = Bundle.main.loadNibNamed("TenthTableViewCell", owner: self, options: nil)?.first as! TenthTableViewCell
            cell.img.image = arrOfData[indexPath.row].image
            
            return cell
            
        }
        else if arrOfData[indexPath.row].cell == 11 {
            
            let cell = Bundle.main.loadNibNamed("EleventhTableViewCell", owner: self, options: nil)?.first as! EleventhTableViewCell
            
            return cell
            
        }
        else{
            // default
          let cell =  Bundle.main.loadNibNamed("FirstTableViewCell", owner: self, options: nil)?.first as! FirstTableViewCell
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
    else if arrOfData[indexPath.row].cell == 3 {
        return 50
    }
    else if arrOfData[indexPath.row].cell == 4 {
        return 50
    }
    else if arrOfData[indexPath.row].cell == 5 {
        return 45
    }
    else if arrOfData[indexPath.row].cell == 6 {
        return 50
    }
    else if arrOfData[indexPath.row].cell == 7 {
        return 50
    }
    else if arrOfData[indexPath.row].cell == 8 {
        return 45
    }
    else if arrOfData[indexPath.row].cell == 9 {
        return 50
    }
    else if arrOfData[indexPath.row].cell == 10 {
        return 45
    }
    else if arrOfData[indexPath.row].cell == 11 {
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
