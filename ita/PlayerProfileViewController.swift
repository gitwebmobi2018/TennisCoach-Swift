//
//  PlayerProfileViewController.swift
//  ita
//
//  Created by Nagy Ádám on 2017. 08. 27..
//  Copyright © 2017. Nagy Ádám. All rights reserved.
//

import UIKit

class PlayerProfileViewController: UIViewController {
    
    enum Sections: Int {
        case datas = 0
        case schedule = 1
    }

    @IBOutlet weak var levelButton: UIButton!
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    var viewModel: PlayerViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        levelButton.layer.cornerRadius = 17
        navigationItem.title = "Player"
        viewModel = PlayerViewModel()
        tableView.register(PractiseTableViewCell.self)
        tableView.register(DetailsTableViewCell.self)
    }
    
    @IBAction func levelButtonTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.1, animations: { 
            self.levelButton.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { _ in
            UIView.animate(withDuration: 0.1, animations: {
                self.levelButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            }, completion: { _ in
                let vc = UIStoryboard.init(storyboard: .Level).instantiateInitialViewController() as! LevelViewController
                vc.level = self.viewModel.player.level
                self.show(vc, sender: self)
            })
        }
    }

}

extension PlayerProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == Sections.schedule.rawValue { return 70 }
        else { return tableView.rowHeight }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 { return 0 }
        else { return tableView.sectionHeaderHeight }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case Sections.datas.rawValue: return "UserDatas"
        case Sections.schedule.rawValue: return "Schedule"
        default: return nil
        }
    }
    
}

extension PlayerProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case Sections.datas.rawValue:
            let dataCell = tableView.dequeueReusableCell(withIdentifier: DetailsTableViewCell.reuseIdentifier, for: indexPath) as! DetailsTableViewCell
            dataCell.leftLabelText = viewModel.playerDatas(for: indexPath.row).title
            dataCell.rightLabelText = viewModel.playerDatas(for: indexPath.row).description
            return dataCell
        case Sections.schedule.rawValue:
            let scheduleCell = tableView.dequeueReusableCell(withIdentifier: PractiseTableViewCell.reuseIdentifier, for: indexPath) as! PractiseTableViewCell
            scheduleCell.day = viewModel.practiseDatas(for: indexPath.row).day
            scheduleCell.title = "Practise: \(viewModel.practiseDatas(for: indexPath.row).title)"
            scheduleCell.details = viewModel.practiseDatas(for: indexPath.row).description
            return scheduleCell
        default: return tableView.cellForRow(at: indexPath)!
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Sections.schedule.rawValue: return viewModel.player.allPractises.count
        case Sections.datas.rawValue: return 4
        default: return 0
        }
    }
}
