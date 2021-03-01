//
//  AllGroupsController.swift
//  Friends
//
//  Created by Игорь Гомзяков on 21.02.2021.
//

import UIKit

class AllGroupsController: UITableViewController {
    
    var groups = [Group(name: "Wylsacom", avatar: UIImage(named: "wylsa")),
                  Group(name: "MDK", avatar: UIImage(named: "mdk")),
                  Group(name: "Стартапы и бизнес", avatar: UIImage(named: "vc.ru")),
                  Group(name: "РБК", avatar: UIImage(named: "rbk"))
                        ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? GroupsCell else { return UITableViewCell() }
        cell.groupLabel.text = groups[indexPath.row].name
        cell.groupAvatar?.image = groups[indexPath.row].avatar

        return cell
    }
}
