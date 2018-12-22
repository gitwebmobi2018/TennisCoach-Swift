//
//  AppColorSet.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

enum AppColorSet {
    case navigationBar
    case background
    case red
    case textColor
    
    var color: UIColor {
        return UIColor(hex: self.hexValue)
    }
    
    var hexValue: String {
        switch self {
        case .navigationBar: return "ECECEE"
        case .background: return "F5F5F7"
        case .red: return "CF0A54"
        case .textColor: return "BBBEC4"
        }
    }
}
