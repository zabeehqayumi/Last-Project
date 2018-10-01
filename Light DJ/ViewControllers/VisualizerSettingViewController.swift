//
//  VisualizerSettingViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/26/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class VisualizerSettingViewController: UIViewController {
    
    
@IBOutlet var topThreeButtons: [UIButton]!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    @IBAction func garbageButtonPressed(_ sender: Any) {
        warning()
        
    }

    func warning(){
        
        let alert = UIAlertController(title: "Lights Not Connected", message: "Could not connected to the a light network. Check your WiFi connection and that the bulbs can be controlled through their official apps", preferredStyle: .alert)
        let action = UIAlertAction(title: "Dismiss", style: .default) { (action) in
            
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func visualizerButtonPressed(_ sender: Any) {
        
        topThreeButtons.forEach { (Button) in
            UIView.animate(withDuration: 0.2, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    @IBAction func visualizerSettingPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
