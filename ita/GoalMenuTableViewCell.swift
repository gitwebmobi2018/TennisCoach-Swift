//
//  GoalMenuTableViewCell.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 28..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

class GoalMenuTableViewCell: UITableViewCell {

    @IBOutlet weak private var titleLabel: UILabel!
    
    var goalMenuType: GoalMenuType! {
        didSet { title = goalMenuType.rawValue }
    }
    
    var title: String? {
        get { return titleLabel.text }
        set { titleLabel.text = newValue }
    }
    
}
