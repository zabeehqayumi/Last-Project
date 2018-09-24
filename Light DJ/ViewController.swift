//
//  ViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/21/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Hidden buttons collection for drop down menu and three top button for visualizer
    
    @IBOutlet var topThreeButtons: [UIButton]!
    
    
    @IBOutlet var buttonsCollection: [UIButton]!
    
    // ColorPallete changer
    @IBOutlet weak var colorPallete: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func equalizerButtonPressed(_ sender: Any) {
        
        topThreeButtons.forEach { (Button) in
            UIView.animate(withDuration: 0.2, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
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
        
        let alert = UIAlertController(title: "Lights Not Connected", message: "Could not connected to the a light network. Check your WiFi connection and that the bulbs can be controlled through their official apps", preferredStyle: .alert)
        let action = UIAlertAction(title: "Dismiss", style: .default) { (action) in
            
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func twiestedRainbowButtonPressed(_ sender: Any) {
        // Calling
        
        dropDown()

    }
    @IBAction func otherButtonPressed(_ sender: Any) {
    }
    @IBAction func controlsButtonPressed(_ sender: Any) {
    }
    
    // ColorPallete Buttons
    
    // 1
    @IBAction func twistedRainbow(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "twistedrainbow-1")
         dropDown()

    }
    // 2
    @IBAction func hawaiianSunrise(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "hawaiiansunrise")
         dropDown()

    }
    // 3
    @IBAction func greenDragon(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "greendragon")
         dropDown()

    }
    // 4
    @IBAction func rocketPop(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "rocketpop")
         dropDown()

    }
    // 5
    @IBAction func blueDream(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "bluedream")
         dropDown()

    }
    // 6
    @IBAction func strawberryDaquiri(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "strawberrydaquiri")
         dropDown()
    }
    // 7
    @IBAction func srewdriver(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "screwdriver")
         dropDown()

    }
    // 8
    @IBAction func goodVibes(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "goodvibes")
         dropDown()

    }
    // 9
    @IBAction func fireAndRice(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "fireandice")
        dropDown()
    }
    // 10
    @IBAction func electricSummer(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "electricsummer")
        dropDown()
    }
    
    func dropDown(){
        buttonsCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    
    
    // top three buttons of visualizer
    
    @IBAction func visualizerTapped(_ sender: Any) {
    }
    
    @IBAction func scenemakerTapped(_ sender: Any) {
    }
    
    @IBAction func matrixTapped(_ sender: Any) {
    }
    
    
    
    
}

