//
//  SceneMakerViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/24/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class SceneMakerViewController: UIViewController {
    
    
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
