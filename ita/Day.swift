//
//  Day.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

enum Day {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
    
    var image: UIImage { return UIImage(named: String(describing: self))! }
    
    static var allDay: [Day] { return [.monday, .tuesday, .wednesday, .thursday, .friday, .saturday, .sunday] }
    
    static var randDay: Day {
        return allDay[Int(arc4random_uniform(UInt32(allDay.count)))]
    }
}
