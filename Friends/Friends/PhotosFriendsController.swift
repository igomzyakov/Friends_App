//
//  PhotosFriendsController.swift
//  Friends
//
//  Created by Игорь Гомзяков on 21.02.2021.
//

import UIKit

class PhotosFriendsController: UICollectionViewController {
    
    var displayedName: User?
    
    var myFriends = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = displayedName?.name
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myFriends.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosFriendsCell", for: indexPath) as? PhotosCell else { return UICollectionViewCell() }
        cell.friendsPhoto?.image = myFriends[indexPath.row].photo
        return cell
        
        
        
        
    }
}

