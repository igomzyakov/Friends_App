//
//  PhotosCell.swift
//  Friends
//
//  Created by Игорь Гомзяков on 21.02.2021.
//

import UIKit

class PhotosCell: UICollectionViewCell {
    
    @IBOutlet var friendsPhoto: UIImageView!
 
    
    func configure(with forecast: Friend) {
        friendsPhoto.image = forecast.photo
    }
    
}
    
