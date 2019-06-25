//
//  LoverTableViewCell.swift
//  IOSFINAL
//
//  Created by User16 on 2019/6/25.
//  Copyright © 2019 User16. All rights reserved.
//

import UIKit

class LoverTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageview: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
