//
//  SceneMakerViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/24/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class SceneMakerViewController: UIViewController {
    
    var arrOfCells : [UIImage] = [#imageLiteral(resourceName: "strobeCycle"), #imageLiteral(resourceName: "partyStrobe"), #imageLiteral(resourceName: "softStrobe"), #imageLiteral(resourceName: "fillCycle"), #imageLiteral(resourceName: "partyStrobe"), #imageLiteral(resourceName: "impact"), #imageLiteral(resourceName: "doubeWave"),#imageLiteral(resourceName: "vortext"), #imageLiteral(resourceName: "drip"), #imageLiteral(resourceName: "drip"), #imageLiteral(resourceName: "blur"), #imageLiteral(resourceName: "fillCycle-2"), #imageLiteral(resourceName: "swagger"), #imageLiteral(resourceName: "quickFlash"), #imageLiteral(resourceName: "fireworks-1"), #imageLiteral(resourceName: "fadeCycle"), #imageLiteral(resourceName: "doubleFill"), #imageLiteral(resourceName: "swirl"), #imageLiteral(resourceName: "swirl"), #imageLiteral(resourceName: "flip"), #imageLiteral(resourceName: "strobeCycle"), #imageLiteral(resourceName: "flip"), #imageLiteral(resourceName: "grooveWave"), #imageLiteral(resourceName: "ascent"), #imageLiteral(resourceName: "split"), #imageLiteral(resourceName: "growCycle")]
    
    @IBOutlet var topThreeButtons: [UIButton]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
        

        // Do any additional setup after loading the view.
    }


    @IBAction func visualizerButtonPressed(_ sender: Any) {
        
        topThreeButtons.forEach { (Button) in
            UIView.animate(withDuration: 0.2, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func sceneMakerButtonPressed(_ sender: Any) {
        topThreeButtons.forEach { (Button) in
            UIView.animate(withDuration: 0.2, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    
    
    @IBAction func garbageButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Lights Not Connected", message: "Could not connected to the a light network. Check your WiFi connection and that the bulbs can be controlled through their official apps", preferredStyle: .alert)
        let action = UIAlertAction(title: "Dismiss", style: .default) { (action) in
            
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
}

// Extension of class

extension SceneMakerViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrOfCells.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SceneMakerTableViewCell
        
        cell.detailCells.image = arrOfCells[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

    }
    
    
}
