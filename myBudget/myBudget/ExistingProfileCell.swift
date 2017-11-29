//
//  ExistingProfileCell.swift
//  myBudget
//
//  Created by Mohamad Asaker on 2017-03-12.
//  Copyright © 2017 AsakerMohd. All rights reserved.
//

import UIKit

class ExistingProfileCell: UITableViewCell {

    @IBOutlet var profileName: UILabel!
    @IBOutlet var budget: UILabel!
    @IBOutlet var monthImage: UIImage!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
