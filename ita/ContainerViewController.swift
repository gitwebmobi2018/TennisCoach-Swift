//
//  ContainerViewController.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 28..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

class ContainerViewController: UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        tabBar.items?[0].title = "Coach"
        tabBar.items?[0].image = UIImage(named: "coach")!
        tabBar.items?[1].title = "Player"
        tabBar.items?[1].image = UIImage(named: "tennis_ball")!
    }
    
    

}
