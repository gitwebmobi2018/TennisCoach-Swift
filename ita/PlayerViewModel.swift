//
//  PlayerViewModel.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import Foundation

class PlayerViewModel {
    
    let player: Player
    
    init() {
        self.player = .init(name: "Sarada", email: "sarada@gmail.com", phoneNumber: "+438764321", level: .first, parentsPhoneNumber: "+3487651234")
    }
    
    func playerDatas(for row: Int) -> (title: String, description: String){
        switch row {
        case 0: return ("Name", player.name)
        case 1: return ("Phone", player.phoneNumber)
        case 2: return ("Email", player.email)
        case 3: return ("Parents Phone", player.parentsPhoneNumber)
        default: return ("?", "?")
        }
    }
    
    func practiseDatas(for row: Int) -> (title: String, description: String, day: Day) {
        return (player.allPractises[row].name, player.allPractises[row].description, Day.randDay)
    }
    
}
