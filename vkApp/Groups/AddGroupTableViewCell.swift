//
//  AddGroupTableViewCell.swift
//  vkApp
//
//  Created by Alex Shader on 02.06.2020.
//  Copyright © 2020 shaderness. All rights reserved.
//

import UIKit

class AddGroupTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var groupNameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
