//
//  MyFriendsController.swift
//  Friends
//
//  Created by Игорь Гомзяков on 21.02.2021.
//

import UIKit

class FriendsController: UITableViewController {
    
    var myFriends = [User(name: "Гомзяков Игорь", avatar: UIImage(named: "igor"), photo:UIImage(named: "igor")),
                     User(name: "Дьячков Андрей", avatar: UIImage(named: "andrey"), photo: UIImage(named: "andrey")),
                     User(name: "Колосов Алексей", avatar: UIImage(named: "alex"), photo: UIImage(named: "alex")),
                     User(name: "Боровский Кирилл", avatar: UIImage(named: "kirill"), photo: UIImage(named: "kirill"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath)
            as? FriendsCell else { return UITableViewCell() }
            cell.avatarFriends.image = myFriends[indexPath.row].avatar
            cell.labelFriends.text = myFriends[indexPath.row].name
            return cell
     }
    
    

    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowFriendsSegue",
           let senderCell = sender as? FriendsCell,
           let cellIndexPath = tableView.indexPath(for: senderCell),
           let photosFriendsController = segue.destination as? PhotosFriendsController {
            let selectedFriends = myFriends[cellIndexPath.row]
            photosFriendsController.displayedName = selectedFriends
            
        }
    }
}
