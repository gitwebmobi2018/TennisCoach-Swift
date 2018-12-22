//
//  Member.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

protocol Member {
    var name: String { get set }
    var email: String { get set }
    var phoneNumber: String { get set }
    var photo: UIImage? { get set }
}
