//
//  LevelsTableViewCell.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

class LevelsTableViewCell: UITableViewCell {

    @IBOutlet weak private var statusButton: UIButton!
    @IBOutlet weak private var statusImageView: UIImageView!
    @IBOutlet weak private var goalTitleLabel: UILabel!
    @IBOutlet weak private var goalDescLabel: UILabel!
    
    var goal: Goal! {
        didSet {
            status = goal.state
            goalTitle = goal.type.name
            goalDescription = goal.type.description
        }
    }
    
    var status: Goal.State = .available {
        didSet {
            statusButton.setImage(status.buttonIcon, for: .normal)
            statusImageView.image = status.icon
        }
    }
    
    var goalTitle: String? {
        get { return goalTitleLabel.text }
        set { goalTitleLabel.text = newValue }
    }
    
    var goalDescription: String? {
        get { return goalDescLabel.text }
        set { goalDescLabel.text = newValue }
    }
    
}
