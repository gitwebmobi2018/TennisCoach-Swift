//
//  Practise.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import Foundation

enum Practise {
    case p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15
    
    var name: String { return String(describing: self) }
    var description: String { return ("Description for practise \(name)") }
}
