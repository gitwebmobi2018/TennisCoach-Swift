//
//  Goal.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

class Goal {
    let type: Goal.GoalType
    var state: Goal.State
    var rating: Goal.Rating
    
    var practises: [Practise] {
        switch type {
        case .goal11, .goal12, .goal13: return [.p1, .p2, .p3]
        case .goal21, .goal22, .goal23: return [.p4, .p5, .p6]
        case .goal31, .goal32, .goal33: return [.p7, .p8, .p9]
        case .goal41, .goal42, .goal43: return [.p10, .p11, .p12]
        case .goal51, .goal52, .goal53: return [.p13, .p14, .p15]
        }
    }
    
    init(type: Goal.GoalType) {
        self.type = type
        
        switch arc4random_uniform(3) {
        case 0: self.state = .available
        case 1: self.state = .done
        case 2: self.state = .locked
        default: self.state = .available
        }
        self.rating = .unrated
    }
}

extension Goal {
    
    enum Rating {
        case unrated
        case zeroStar, oneStar, twoStar, threeStar, fourStar, fiveStar
    }
    
    enum GoalType {
        case goal11, goal12, goal13
        case goal21, goal22, goal23
        case goal31, goal32, goal33
        case goal41, goal42, goal43
        case goal51, goal52, goal53
        
        var name: String {
            return String(describing: self)
        }
        
        var description: String {
            return "Description of goal \(name)"
        }
        
        var explanation: String {
            return "Explanation of goal \(name)"
        }
        
        var video: URL? {
            return URL(fileURLWithPath: "urlPathForVideoFromDocumentsDirectory")
        }
    }
    
    enum State: String {
        case locked
        case available
        case done
        
        var icon: UIImage {
            return UIImage(named: self.rawValue)!
        }
        
        var buttonIcon: UIImage {
            return UIImage(named: "\(self.rawValue)Button")!
        }
    }
}
