//
//  customView.swift
//  Friends
//
//  Created by Игорь Гомзяков on 28.02.2021.
//

import UIKit


@IBDesignable

class customView: UIImageView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = bounds.height / 2
        layer.borderWidth = 3
        layer.borderColor = UIColor.darkGray.cgColor
        clipsToBounds = true
    }
}

class customView2: UIImageView {
        
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 4.0
        layer.shadowRadius = 10
        
        layer.borderColor = UIColor.darkGray.cgColor
        layer.borderWidth = 2
        
        layer.cornerRadius = bounds.height / 2
        
        clipsToBounds = false
        
        //let translation3D = CATransform3DMakeTranslation(-10, 10, 100)
        //layer.transform = translation3D
    }
}
