//
//  LaptopModel.swift
//  LearnerOOP
//
//  Created by Kevin Susanto on 15/05/19.
//  Copyright © 2019 Kevin Susanto. All rights reserved.
//

import Foundation
class LaptopModel {
    var brand: String
    var version: String
    var displaySize: Int
    var operatingSystem: String
    
    init(brandLaptop:String, versionLaptop:String, displaySizeLaptop: Int, operatingSystemLaptop: String) {
        self.brand = brandLaptop
        self.version = versionLaptop
        self.displaySize = displaySizeLaptop
        self.operatingSystem = operatingSystemLaptop
    }
    
    func increaseDisplaySize(){
        self.displaySize += 1
    }
    
}
