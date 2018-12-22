//
//  CoachTableViewCell.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {

    @IBOutlet weak private var leftLabel: UILabel!
    @IBOutlet weak private var rightLabel: UILabel!
    
    var leftLabelText: String? {
        get {
            return leftLabel.text
        }
        set {
            leftLabel.text = newValue
        }
    }
    
    var rightLabelText: String? {
        get {
            return rightLabel.text
        }
        set {
            rightLabel.text = newValue
        }
    }
    
}
