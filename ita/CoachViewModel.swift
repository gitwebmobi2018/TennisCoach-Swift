//
//  CoachViewModel.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import Foundation

class CoachViewModel {
    
    let coach: Coach
    
    init() {
        self.coach = .init(name: "Adam Nagy", email: "adam@nagy.com", phoneNumber: "+393215843", photo: nil)
    }
    
    var tableRowDatas: [String : String] {
        return [
            "Name" : coach.name,
            "Phone" : coach.phoneNumber,
            "Email" : coach.email
        ]
    }
    
    func title(_ row: Int) -> String {
        switch row {
        case 0: return "Name"
        case 1: return "Phone"
        case 2: return "Email"
        default: return ""
        }
    }
    
    func callCoach() {
        CallService.call(number: coach.phoneNumber)
    }
    
}
