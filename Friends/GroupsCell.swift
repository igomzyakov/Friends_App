//
//  GroupsCell.swift
//  Friends
//
//  Created by Игорь Гомзяков on 21.02.2021.
//

import UIKit

class GroupsCell: UITableViewCell {

    static let reuseIdentifier = "WeatherForecastCell"
    
    @IBOutlet var groupLabel: UILabel!
    @IBOutlet var groupAvatar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
