//
//  CoachViewController.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

class CoachViewController: UIViewController {

    @IBOutlet weak var coachImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    var viewModel: CoachViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        viewModel = CoachViewModel()
        view.backgroundColor = AppColorSet.background.color
        tableView.backgroundColor = AppColorSet.background.color
        navigationController?.navigationBar.barTintColor = AppColorSet.navigationBar.color
        navigationItem.rightBarButtonItem?.tintColor = .darkGray
        tableView.bounces = false
        tabBarItem.title = "Coach"
        navigationItem.title = "Coach"
        tableView.tableFooterView = UIView()
        coachImageView.image = viewModel.coach.photo ?? #imageLiteral(resourceName: "user")
        tableView.register(DetailsTableViewCell.self)
    }
    
    @IBAction func callCoachAction(_ sender: UIBarButtonItem) {
        viewModel.callCoach()
    }

}

extension CoachViewController: UITableViewDelegate {
    
}

extension CoachViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.tableRowDatas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailsTableViewCell.reuseIdentifier, for: indexPath) as! DetailsTableViewCell
        cell.backgroundColor = AppColorSet.background.color
        cell.leftLabelText = viewModel.title(indexPath.row)
        cell.rightLabelText = viewModel.tableRowDatas[viewModel.title(indexPath.row)]
        return cell
    }
}
