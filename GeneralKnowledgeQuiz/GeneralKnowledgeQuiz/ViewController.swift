//
//  ViewController.swift
//  GeneralKnowledgeQuiz
//
//  Created by Sabahat Usman on 6/8/19.
//  Copyright © 2019 Sabahat Usman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    ///////////////////IBOUTLETS//////////////////////
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer0: UIButton!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    //////////////////////////////////////////////////
    
    //////////////IBACTIONS///////////////////////////
    @IBAction func handleAnswer0(_ sender: Any) {
        checkAnswer(choiceNo: 0)
    }
    
    
    @IBAction func handleAnswer1(_ sender: Any) {
        checkAnswer(choiceNo: 1)
    }
    
    @IBAction func handleAnswer2(_ sender: Any) {
        checkAnswer(choiceNo: 2)
    }
    
    @IBAction func handleAnswer3(_ sender: Any) {
        checkAnswer(choiceNo: 3)
    }
    
    //////////////////////////////////////////////////
    
    ////////////////FUNCTIONS/////////////////////////
    func setQuestion(){
    
        questionLabel.text = currentQuestion!.question
        answer0.setTitle (currentQuestion!.answers[0], for: .normal)
        answer1.setTitle (currentQuestion!.answers[1], for: .normal)
        answer2.setTitle (currentQuestion!.answers[2], for: .normal)
        answer3.setTitle (currentQuestion!.answers[3], for: .normal)
        statusLabel.text = "Question \(currentQuestionIndex + 1) of \(questions.count)"
      
    
    }
    
    func loadQuestion(){
        
        if (currentQuestionIndex+1 != questions.count){
            currentQuestionIndex += 1
            currentQuestion = questions[currentQuestionIndex]
            setQuestion()
            
        }else{
            performSegue(withIdentifier: "sgShowResults", sender: nil)
        }
    }
    
    func checkAnswer(choiceNo: Int){
        if (choiceNo == currentQuestion!.correctAnswer){
            numOfCorrectAnswers += 1
            loadQuestion()
        }else{
        loadQuestion()
        }
        
    }
    
    ///////////////////////////////////////////////
    //////////////STRUCTURE, VARIABLES AND CONSTANTS///
    
    struct Question{
        
        let question:String
        let answers: [String]
        let correctAnswer : Int
    }
    
    var questions:[Question] = [
        Question(question: "Grand Central Terminal, Park Avenue, New York is the world's?",
                 answers:["largest railway station", "highest railway station","longest railway station",
            "None of the above"],
                 correctAnswer: 0),
        Question(question:"Entomology is the science that studies?",
                 answers:["Behavior of human beings","Insects","The origin and history of technical and scientific terms","The formation of rocks"],
                 correctAnswer: 1 ),
        Question(question:"For which of the following disciplines is Nobel Prize awarded?",
                 answers:["Physics and Chemistry","Physiology or Medicine","Literature, Peace and Economics","All of the above"],
                 correctAnswer: 3)
    ]
    
    var currentQuestion: Question?
    var currentQuestionIndex: Int = 0
    var numOfCorrectAnswers: Int = 0
    
    ////////////////////////////////////////
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "sgShowResults"){
            let vc = segue.destination as! ResultsViewController
            vc.numOfCorrectAnswers = numOfCorrectAnswers
            vc.total = questions.count
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currentQuestion = questions[0]
        setQuestion()
    }


}

