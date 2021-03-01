//
//  User.swift
//  Friends
//
//  Created by Игорь Гомзяков on 21.02.2021.
//

import UIKit

struct User: Equatable {
    let name: String
    let avatar: UIImage?
    let friend: [Friend]
}

struct Friend:Equatable {
    let photo: UIImage?
    
} 

