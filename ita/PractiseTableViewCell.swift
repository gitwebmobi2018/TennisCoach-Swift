//
//  PractiseTableViewCell.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

class PractiseTableViewCell: UITableViewCell {
    
    @IBOutlet weak private var practiseImageView: UIImageView!
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var detailsLabel: UILabel!
    
    var day: Day? { didSet { dayImage = day?.image } }
    
    var dayImage: UIImage? {
        get { return practiseImageView.image }
        set { practiseImageView.image = newValue }
    }
    
    var title: String? {
        get { return titleLabel.text }
        set { titleLabel.text = newValue }
    }
    
    var details: String? {
        get { return detailsLabel.text }
        set { detailsLabel.text = newValue }
    }
    
}
