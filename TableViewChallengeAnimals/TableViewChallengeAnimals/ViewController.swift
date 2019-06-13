//
//  ViewController.swift
//  TableViewChallengeAnimals
//
//  Created by Sabahat Usman on 6/12/19.
//  Copyright © 2019 Sabahat Usman. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
   // let animals:[String] = ["Bird","Bunny","Cat"]
    var birdVotes: Int = 0
    var bunnyVotes:Int = 0
    var catVotes: Int = 0
    
    var voteCountArray: [String] = []
    func updateVoteCountArray(){
        voteCountArray = ["Bird Votes: \(birdVotes)","Bunny Votes: \(bunnyVotes)", "Cat Votes: \(catVotes)"]
    }
    @IBAction func birdButton(_ sender: Any) {
        birdVotes += 1
        updateVoteCountArray()
        myTableView.reloadData()
    }
    
    
    @IBAction func bunnyButton(_ sender: Any) {
        bunnyVotes += 1
        updateVoteCountArray()
        myTableView.reloadData()
    }
    
    @IBAction func catButton(_ sender: Any) {
        catVotes += 1
        updateVoteCountArray()
        myTableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return voteCountArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = voteCountArray[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateVoteCountArray()
    }


}

