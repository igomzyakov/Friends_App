//
//  MyGroupsController.swift
//  Friends
//
//  Created by Игорь Гомзяков on 21.02.2021.
//

import UIKit

class MyGroupsController: UITableViewController {
    
    
    var myGroups = [Group(name:"Apple", avatar: UIImage(named: "apple"))]
        

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //формирование количества секции
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGroups.count
    }
    //настройка отображения ячейки
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
            as? GroupsCell else { return UITableViewCell() }
        cell.groupLabel?.text = myGroups[indexPath.row].name
        cell.groupAvatar?.image = myGroups[indexPath.row].avatar
        return cell
    }
    //добавление групп
    @IBAction func addCity(segue: UIStoryboardSegue) {
        if let allGroupsController = segue.source as? AllGroupsController,
           let selectedIndexPath = allGroupsController.tableView.indexPathForSelectedRow {
            let selectedCity = allGroupsController.groups[selectedIndexPath.row]
            if !myGroups.contains(selectedCity) {
                myGroups.append(selectedCity)
                tableView.reloadData()
            }
        }
    }
    
    //удаление групп
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
        myGroups.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}
}
   
