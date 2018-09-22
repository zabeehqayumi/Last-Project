//
//  ViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/21/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func equalizerButtonPressed(_ sender: Any) {
    }
    @IBAction func exclamationButtonPressed(_ sender: Any) {
    }
    
    @IBAction func collectorButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Lights Not Connected", message: "Could not connected to the a light network. Check your WiFi connection and that the bulbs can be controlled through their official apps", preferredStyle: .alert)
        let action = UIAlertAction(title: "Dismiss", style: .default) { (action) in
            
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func philipsButtonPressed(_ sender: Any) {
    }
    @IBAction func settingButtonPressed(_ sender: Any) {
    }
    @IBAction func lockColorButtonPressed(_ sender: Any) {
    }
    @IBAction func twiestedRainbowButtonPressed(_ sender: Any) {
    }
    @IBAction func otherButtonPressed(_ sender: Any) {
    }
    @IBAction func controlsButtonPressed(_ sender: Any) {
    }
}

