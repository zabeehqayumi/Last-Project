//
//  newSettingViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/27/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class newSettingViewController: UIViewController {
    
    @IBOutlet var burgerButtonCollection: [UIButton]!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func burgerButtonPressed(_ sender: Any) {
        // Calling
        
        dropDownMenu()
 
        
    }
    
    @IBAction func changeTitlePressed(_ sender: Any) {
        // calling
        
        dropDownMenu()
        warning()
  
    }
    
    
    @IBAction func exiteEffectMakerPressed(_ sender: Any) {
        dropDownMenu()
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    func dropDownMenu(){
        burgerButtonCollection.forEach { (Button) in
            UIView.animate(withDuration: 0.2, animations: {
                Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    func warning(){
        let alert = UIAlertController(title: "Pro-only Freature", message: "Thid feature is only available for Pro users. Upgrade to Light DJ to create and configure your own effect sheets", preferredStyle: .alert)
        let action = UIAlertAction(title: "Dismiss", style: .default) { (action) in
            
        }
        let action1 = UIAlertAction(title: "Upgrade Now", style: .default) { (action) in
            if let url = URL(string: "https://itunes.apple.com/us/app/light-dj-pro-for-smart-lights/id963524356?mt=8"){
                UIApplication.shared.canOpenURL(url)
            }
        }
        
        alert.addAction(action)
        alert.addAction(action1)
        present(alert, animated: true, completion: nil)
        
    }

}
