//
//  ViewController.swift
//  ToDoList
//
//  Created by Sabahat Usman on 6/13/19.
//  Copyright © 2019 Sabahat Usman. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBAction func addATask(_ sender: Any) {
        addNewTask()
    }
    @IBOutlet weak var inputTextView: UITextField!
    
    func addNewTask(){
        if (inputTextView.text != ""){
                let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newTask = Task(context:context)
            newTask.taskName = inputTextView?.text
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
           // print(newTask.taskName!)
            inputTextView.text = ""
            inputTextView.resignFirstResponder()
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

