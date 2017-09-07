//
//  CustumSideMenuTableViewCell.swift
//  SampleDesignApp
//
//  Created by Cloudzeg Laptop on 8/22/17.
//  Copyright © 2017 Cloudzeg Laptop. All rights reserved.
//

import UIKit

class CustumSideMenuTableViewCell: UITableViewCell
{
    @IBOutlet weak var lblItems:UILabel!
    @IBOutlet weak var ImgItems:UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
