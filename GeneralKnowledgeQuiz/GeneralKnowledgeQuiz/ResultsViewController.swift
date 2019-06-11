//
//  ResultsViewController.swift
//  GeneralKnowledgeQuiz
//
//  Created by Sabahat Usman on 6/8/19.
//  Copyright © 2019 Sabahat Usman. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var resultsImage: UIImageView!
    
    var numOfCorrectAnswers = 0
    var total = 0
 
    
    func setImageView(){
        
        if (numOfCorrectAnswers > 0) || (numOfCorrectAnswers == total){
            resultsImage.image = UIImage(named:"correctAnswers")
        }
        else{
            resultsImage.image = UIImage(named:"nonCorrect")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageView()
        scoreLabel.text = "Score: \(numOfCorrectAnswers)/\(total)"
        // Do any additional setup after loading the view.
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
