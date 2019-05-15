//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Kevin Susanto on 15/05/19.
//  Copyright © 2019 Kevin Susanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MODEL 1
    @IBOutlet var learnerNameLabel: UILabel!
    @IBOutlet var learnerAgeLabel: UILabel!
    @IBOutlet var learnerGenderLabel: UILabel!
    var learnerInstance: LearnerModel? // Copy of LearnerModel
    @IBAction func increaseAgeBtn(_ sender: UIButton) {
        if let instance = facilitatorInstance {
            instance.increaseAge()
            instance.coachMentee()
            updateUI()
        }
    }
    //MODEL 2
    @IBOutlet var laptopBrandLabel: UILabel!
    @IBOutlet var laptopVersionLabel: UILabel!
    @IBOutlet var laptopDisplayLabel: UILabel!
    @IBOutlet var laptopOsLabel: UILabel!
    var laptopInstance:LaptopModel?
    @IBAction func increaseDisplayBtn(_ sender: UIButton) {
        if let instance = laptopInstance {
            instance.increaseDisplaySize()
            updateUIModel2()
        }
    }
    //MODEL 3 (INHERITANCE)
    var facilitatorInstance: FacilitatorModel?
    
    //
    //
    //
    
    override func viewDidLoad() {
        //MODEL 1
        super.viewDidLoad()
        learnerInstance = LearnerModel(nameLearner: "Kevin Susanto", ageLearner: 21, genderLearner: "Male", imageProfileLearner: "")
        updateUI() //create function
        
        //MODEL 2
        laptopInstance = LaptopModel(brandLaptop: "Macbook", versionLaptop: "Pro 2017", displaySizeLaptop: 13, operatingSystemLaptop: "OSX Mojave")
        updateUIModel2()
        
        facilitatorInstance = FacilitatorModel(facilName: "David", facilAge: 24, facilGender: "Male", facilImageProfile: "", facilPerk: "Unlimited")
        
    }
    

    
    func updateUIModel2() {
        if let instance = laptopInstance {
            laptopBrandLabel.text = instance.brand
            laptopVersionLabel.text = instance.version
            laptopDisplayLabel.text = "\(instance.displaySize)"
            laptopOsLabel.text = instance.operatingSystem
        }
    }
    
    func updateUI() {
        if let instance = facilitatorInstance{
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender

        }
        

    }
    

}

