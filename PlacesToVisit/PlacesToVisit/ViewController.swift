//
//  ViewController.swift
//  PlacesToVisit
//
//  Created by Sabahat Usman on 6/6/19.
//  Copyright © 2019 Sabahat Usman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 let backgroundImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        setBackground()
        
    }
    
    func setBackground(){
        
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo:view.leadingAnchor).isActive = true
        
        backgroundImageView.trailingAnchor.constraint(equalTo:view.trailingAnchor).isActive = true
        backgroundImageView.image = UIImage(named:"background")
        view.sendSubviewToBack(backgroundImageView)
    }


}

