//
//  DetailViewController.swift
//  PlacesToVisit
//
//  Created by Sabahat Usman on 6/6/19.
//  Copyright © 2019 Sabahat Usman. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    let backgroundImageView = UIImageView()
    
    var placesArr: [String] = ["Paris","Yellowstone","Rome","Tahiti","London","Grand Canyon"]
    var previousNumber: Int = 4
    
    @IBOutlet weak var RecommendationImage: UIImageView!
    @IBOutlet weak var RecommendationLabel: UILabel!
    
 
  
    @IBOutlet weak var userInputTF: UITextField!
    
    @IBAction func Add(_ sender: Any) {
        add()
    }
    
    @IBAction func Random(_ sender: Any) {
        random()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setBackground()
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        random()
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

    
    func random(){
        
        var number =  Int.random(in: 0 ..< placesArr.count)
        
        while number == previousNumber {
            
            number =  Int.random(in: 0 ..< placesArr.count)
            
        }
        
        previousNumber = number
            
        
        RecommendationLabel.text = placesArr[number]
        RecommendationImage.image = UIImage(named:placesArr[number]) == nil ? UIImage(named:"noimage") : UIImage(named:placesArr[number])
        
    }
    
    func add(){
        
        let newPlace = userInputTF.text
        placesArr.append(newPlace!)
        userInputTF.resignFirstResponder()
        userInputTF.text = ""
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
