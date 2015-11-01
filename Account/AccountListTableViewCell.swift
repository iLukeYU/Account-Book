//
//  AccountListTableViewCell.swift
//  Account
//
//  Created by Luke YU on 15/11/1.
//  Copyright © 2015年 Zhang Chen. All rights reserved.
//

import UIKit

class AccountListTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    var textString:String = "init"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if (self.label != nil){
            self.label.text = textString
        }        
    }
}
