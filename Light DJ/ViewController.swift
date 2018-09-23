//
//  ViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/21/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Hidden buttons collection for drop down menu
    @IBOutlet var buttonsCollection: [UIButton]!
    
    // ColorPallete changer
    @IBOutlet weak var colorPallete: UIImageView!
    
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
        
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }

        
    }
    @IBAction func otherButtonPressed(_ sender: Any) {
    }
    @IBAction func controlsButtonPressed(_ sender: Any) {
    }
    
    // ColorPallete Buttons
    
    // 1
    @IBAction func twistedRainbow(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "twistedrainbow-1")
        
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }

    }
    // 2
    @IBAction func hawaiianSunrise(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "hawaiiansunrise")
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }

    }
    // 3
    @IBAction func greenDragon(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "greendragon")
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    // 4
    @IBAction func rocketPop(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "rocketpop")
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }

    }
    // 5
    @IBAction func blueDream(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "bluedream")
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }

    }
    // 6
    @IBAction func strawberryDaquiri(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "strawberrydaquiri")
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }

    }
    // 7
    @IBAction func srewdriver(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "screwdriver")
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }

    }
    // 8
    @IBAction func goodVibes(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "goodvibes")
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }

    }
    // 9
    @IBAction func fireAndRice(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "fireandice")
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }

    }
    // 10
    @IBAction func electricSummer(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "electricsummer")
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }

    }
    
}

