//
//  Player.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

class Player: Member {
    
    var name: String
    var email: String
    var phoneNumber: String
    var photo: UIImage?
    
    var level: Level
    var goals: [Goal] { return level.levelGoals }
    var allPractises: [Practise] { return (goals.map { $0.practises }).flatMap { $0 } }
    
    var parentsPhoneNumber: String
    
    init(name: String, email: String, phoneNumber: String, photo: UIImage? = nil, level: Level, parentsPhoneNumber: String) {
        self.name = name
        self.email = email
        self.phoneNumber = phoneNumber
        self.photo = photo ?? UIImage(named: "noPhoto")!
        self.level = level
        self.parentsPhoneNumber = parentsPhoneNumber
    }
}
