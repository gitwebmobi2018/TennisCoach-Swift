//
//  Level.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import Foundation

enum Level: String {
    case first = "Level 1"
    case second = "Level 2"
    case third = "Level 3"
    case fourth = "Level 4"
    case fifth = "Level 5"
    
    static var values: [Level] { return [.first, .second, .third, .fourth, .fifth] }
}

extension Level {
    
    var levelGoals: [Goal] {
        switch self {
        case .first: return [.init(type: .goal11), .init(type: .goal12), .init(type: .goal13)]
        case .second: return [.init(type: .goal21), .init(type: .goal22), .init(type: .goal23)]
        case .third: return [.init(type: .goal31), .init(type: .goal32), .init(type: .goal33)]
        case .fourth: return [.init(type: .goal41), .init(type: .goal42), .init(type: .goal43)]
        case .fifth: return [.init(type: .goal51), .init(type: .goal52), .init(type: .goal53)]
        }
    }
    
}
