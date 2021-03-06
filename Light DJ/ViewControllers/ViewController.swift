//
//  ViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/21/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var hiddenController: [UIButton]!
    
    
    @IBOutlet weak var labelForDropDownMenu: UILabel!
    
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
        warning()

    }
    @IBAction func philipsButtonPressed(_ sender: Any) {
    }
    @IBAction func settingButtonPressed(_ sender: Any) {
    }
    @IBAction func lockColorButtonPressed(_ sender: Any) {
        warning()
        
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
        labelForDropDownMenu.text = "Twisted Rainbow"
         dropDown()

    }
    // 2
    @IBAction func hawaiianSunrise(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "hawaiiansunrise")
        labelForDropDownMenu.text = "Hawaiian Sunrise"
         dropDown()

    }
    // 3
    @IBAction func greenDragon(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "greendragon")
        labelForDropDownMenu.text = "Green Dragon"

         dropDown()

    }
    // 4
    @IBAction func rocketPop(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "rocketpop")
        labelForDropDownMenu.text = "Rocket Pop"
         dropDown()

    }
    // 5
    @IBAction func blueDream(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "bluedream")
        labelForDropDownMenu.text = "Blue Dream"

         dropDown()

    }
    // 6
    @IBAction func strawberryDaquiri(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "strawberrydaquiri")
        labelForDropDownMenu.text = "Strawberry Daquiri"

         dropDown()
    }
    // 7
    @IBAction func srewdriver(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "screwdriver")
        labelForDropDownMenu.text = "Screwdriver"

         dropDown()

    }
    // 8
    @IBAction func goodVibes(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "goodvibes")
        labelForDropDownMenu.text = "Good Vibes"

         dropDown()

    }
    // 9
    @IBAction func fireAndRice(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "fireandice")
        labelForDropDownMenu.text = "Fire and Ice"

        dropDown()
    }
    // 10
    @IBAction func electricSummer(_ sender: Any) {
        self.colorPallete.image = UIImage(named: "electricsummer")
        labelForDropDownMenu.text = "Electric Summer"

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
    
    // minimizing the topThreeButtons when has its own class
    @IBAction func matrixTapped(_ sender: Any) {
        topThreeButtons.forEach { (Button) in
            UIView.animate(withDuration: 0.2, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    
    }
    
    @IBAction func controllerButtonPressed(_ sender: Any) {
        hiddenController.forEach { (Button) in
            UIView.animate(withDuration: 0.4, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    
    @IBAction func btn1Controls(_ sender: Any) {
        hiddenController.forEach { (Button) in
            UIView.animate(withDuration: 0.4, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func btn2Controls(_ sender: Any) {
        warning()
        
    }
    
    
    
    func warning(){
        
        let alert = UIAlertController(title: "Lights Not Connected", message: "Could not connected to the a light network. Check your WiFi connection and that the bulbs can be controlled through their official apps", preferredStyle: .alert)
        let action = UIAlertAction(title: "Dismiss", style: .default) { (action) in
            
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    
}

