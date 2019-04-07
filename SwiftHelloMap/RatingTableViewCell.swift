//
//  RatingTableViewCell.swift
//  SwiftHelloMap
//
//  Created by Роман Лабунский on 07.04.2019.
//  Copyright © 2019 HERE. All rights reserved.
//

import UIKit

class RatingTableViewCell: UITableViewCell {

    @IBOutlet weak var NameUser: UILabel!
    @IBOutlet weak var ScoreUser: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
