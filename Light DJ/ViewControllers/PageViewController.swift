//
//  PageViewController.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 9/30/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class PageViewController: UIViewController, UIScrollViewDelegate {
    
    var images : [String] = ["creatingEffects", "editingModes", "warningAndGhost"]
    
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageController1: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            pageController1.numberOfPages = images.count
        
        for index in 0..<images.count{
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.scrollView.addSubview(imgView)
            
        }
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(images.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self


    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageController1.currentPage = Int(pageNumber)
    }

    @IBAction func closeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
