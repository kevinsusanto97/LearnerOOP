//
//  RoundedButton.swift
//  LearnerOOP
//
//  Created by Kevin Susanto on 15/05/19.
//  Copyright © 2019 Kevin Susanto. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    override func awakeFromNib() {
        layer.borderWidth = 2
        layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) //color literal
        layer.cornerRadius = 26
        layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 20
        layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }

}
