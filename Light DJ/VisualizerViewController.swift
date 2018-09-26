//
//  VisualizerViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/23/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class VisualizerViewController: UIViewController {
    
    @IBOutlet var topThreeButtons: [UIButton]!
    
    @IBOutlet var mellowEffects: [UIButton]!
    
    
    @IBOutlet var activeEffects: [UIButton]!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func warning(){
        
        let alert = UIAlertController(title: "Lights Not Connected", message: "Could not connected to the a light network. Check your WiFi connection and that the bulbs can be controlled through their official apps", preferredStyle: .alert)
        let action = UIAlertAction(title: "Dismiss", style: .default) { (action) in
            
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    


    @IBAction func helpButtonPressed(_ sender: Any) {
        // calling
        
        warning()
    
}
    
    @IBAction func visualizerButtonPressed(_ sender: Any) {
        // calling
        
        dropDown()
        
    }
    
    func dropDown(){
        topThreeButtons.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    
    
    @IBAction func ownVisualPressed(_ sender: Any) {
        topThreeButtons.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
    }
    
    @IBAction func volumTriggered(_ sender: Any) {
        warning()
    }
    
    @IBAction func noneButtonPressed(_ sender: Any) {
        mellowEffects.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
    }
    
    @IBAction func firworksButtonPressed(_ sender: Any) {
        activeEffects.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }

        
        
    }
    
    
}
