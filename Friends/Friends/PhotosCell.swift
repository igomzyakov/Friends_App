//
//  PhotosCell.swift
//  Friends
//
//  Created by Игорь Гомзяков on 21.02.2021.
//

import UIKit

class PhotosCell: UICollectionViewCell {
    
    @IBOutlet var friendsPhoto: UIImageView!
    
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likesCounter: UILabel!
    
    
    
    func configure(with forecast: Friend) {
        friendsPhoto.image = forecast.photo
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //меняем цвет сердечка
        likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
        likeButton.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        
    }
    
    //ставим + 1 лайк
    @IBAction func like(_ sender: Any) {
        
        likeButton.isSelected.toggle()
        likesCounter.textColor = likeButton.isSelected ? .red : .systemGray
        likesCounter.text = likeButton.isSelected ? "1" : "0"
        if likeButton.isSelected {
        }
    }
    
    
}
    
