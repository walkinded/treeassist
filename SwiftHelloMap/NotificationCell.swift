//
//  NotificationCell.swift
//  SwiftHelloMap
//
//  Created by Роман Лабунский on 06.04.2019.
//  Copyright © 2019 HERE. All rights reserved.
//

import UIKit

class NotificationCell: UITableViewCell {

    @IBOutlet weak var ImageNotifCell: UIImageView!
    @IBOutlet weak var NameTablet: UILabel!
    @IBOutlet weak var NotifDate: UILabel!
    @IBOutlet weak var RepeatTable: UILabel!
    @IBOutlet weak var NotifSwitch: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
