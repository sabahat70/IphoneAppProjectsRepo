//
//  ViewController.swift
//  HelloWorld
//
//  Created by Sabahat Usman on 6/5/19.
//  Copyright © 2019 Sabahat Usman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImageView = UIImageView();

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setBackground()
        
    }

    func setBackground(){
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
      backgroundImageView.leadingAnchor.constraint(equalTo:view.leadingAnchor).isActive = true
        
        backgroundImageView.trailingAnchor.constraint(equalTo:view.trailingAnchor).isActive = true
        backgroundImageView.image = UIImage(named:"stars-planets-bg")
        view.sendSubviewToBack(backgroundImageView)
    }

}

