//
//  Evaulation.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

enum Evaulation: String {
    case zeroStar, oneStar, twoStar, threeStar, fourStar, fiveStar
    
    var image: UIImage {
        return UIImage(named: self.rawValue)!
    }
}
