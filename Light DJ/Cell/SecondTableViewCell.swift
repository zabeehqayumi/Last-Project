//
//  SecondTableViewCell.swift
//  Light DJ
//
//  Created by Zabeehullah Qayumi on 10/1/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var switchOfSecond: UISwitch!
    @IBOutlet weak var lableOfSecondCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
