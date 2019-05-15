//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Kevin Susanto on 15/05/19.
//  Copyright © 2019 Kevin Susanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var learnerNameLabel: UILabel!
    @IBOutlet var learnerAgeLabel: UILabel!
    @IBOutlet var learnerGenderLabel: UILabel!
    
    var learnerInstance: LearnerModel? // Copy of LearnerModel
    
    @IBAction func increaseAgeBtn(_ sender: UIButton) {
        if let instance = learnerInstance {
            instance.increaseAge()
            updateUI()
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel(nameLearner: "Kevin Susanto", ageLearner: 21, genderLearner: "Male", imageProfileLearner: "")
        
        updateUI() //create function
    }
    
    func updateUI() {
        if let instance = learnerInstance{
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender

        }
        

    }
    

}

