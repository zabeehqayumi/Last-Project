//
//  VisualizerViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/23/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class VisualizerViewController: UIViewController {
    
    var randomIndex1 : Int = 0
    var randomIndex2 : Int = 0
    var randomIndex3 : Int = 0
    
    
    @IBOutlet weak var colorBox1: UIView!
    
    @IBOutlet weak var colorBox2: UIView!
    
    @IBOutlet weak var colorBox3: UIView!
    
    
    // array of colors
    
    var arrOfColors = [UIColor]()
    
    @IBOutlet var topThreeButtons: [UIButton]!
    
    @IBOutlet var mellowEffects: [UIButton]!
    
    @IBOutlet var activeEffects: [UIButton]!
    


    override func viewDidLoad() {
        super.viewDidLoad()

        addingColorsForArray()
        cornerRadius()


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
    
    
    @IBAction func suffleButtonPressed(_ sender: Any) {
        //Calling
        updateColorBoxes()
        
    }
    
    func updateColorBoxes(){
        
        randomIndex1 = Int(arc4random_uniform(8))
        randomIndex2 = Int(arc4random_uniform(8))
        randomIndex3 = Int(arc4random_uniform(8))
        
        
        colorBox1.backgroundColor = arrOfColors[randomIndex1]
        colorBox2.backgroundColor = arrOfColors[randomIndex2]
        colorBox3.backgroundColor = arrOfColors[randomIndex3]

        
    }
    
    func addingColorsForArray(){
        //Creating array of colors
        self.arrOfColors.append(UIColor.red)
        self.arrOfColors.append(UIColor.blue)
        self.arrOfColors.append(UIColor.yellow)
        self.arrOfColors.append(UIColor.orange)
        self.arrOfColors.append(UIColor.gray)
        self.arrOfColors.append(UIColor.white)
        self.arrOfColors.append(UIColor.green)
        self.arrOfColors.append(UIColor.purple)

    }
    
    func cornerRadius(){
        
        colorBox1.layer.cornerRadius = 6
        colorBox2.layer.cornerRadius = 6
        colorBox3.layer.cornerRadius = 6

    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        warning()
    }
    
    
    
}
