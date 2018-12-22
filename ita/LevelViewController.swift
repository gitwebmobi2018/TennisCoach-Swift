//
//  LevelViewController.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

class LevelViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var level: Level!
    var viewModel: LevelViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = LevelViewModel(level: level)
        navigationItem.title = level.rawValue
        tableView.register(LevelsTableViewCell.self)
        tableView.tableFooterView = UIView()
    }

}

extension LevelViewController: UITableViewDelegate {
    
}

extension LevelViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return level.levelGoals.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LevelsTableViewCell.reuseIdentifier, for: indexPath) as! LevelsTableViewCell
        cell.goal = viewModel.level.levelGoals[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedGoal = (tableView.cellForRow(at: indexPath) as! LevelsTableViewCell).goal
        let vc = UIStoryboard(storyboard: .Goal).instantiateInitialViewController() as! GoalViewController
        vc.navTitle = selectedGoal?.type.name
        vc.explanation = selectedGoal?.type.explanation
        show(vc, sender: self)
    }
}
