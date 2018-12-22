//
//  GoalViewController.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

class GoalViewController: UIViewController {

    @IBOutlet weak private var explanationLabel: UILabel!
    var viewModel: GoalViewModel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var navTitle: String!
    var explanation: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel = GoalViewModel()
        explanationLabel.text = explanation
        navigationItem.title = navTitle
        tableView.bounces = false
        tableView.register(GoalMenuTableViewCell.self)
    }

}

extension GoalViewController: UITableViewDelegate {
    
}

extension GoalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.menus.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GoalMenuTableViewCell.reuseIdentifier, for: indexPath) as! GoalMenuTableViewCell
        cell.goalMenuType = viewModel.menus[indexPath.row]
        return cell
    }
}
