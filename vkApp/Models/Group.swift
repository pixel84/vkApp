//
//  Group.swift
//  vkApp
//
//  Created by Alex Shader on 03.06.2020.
//  Copyright © 2020 shaderness. All rights reserved.
//

import UIKit

class Group {
    var name: String
    var avatar: UIImage?
    
    init(name: String, avatar: String) {
        self.name = name
        self.avatar = UIImage(named: avatar)
    }

}

extension Group: Equatable {
    static func == (lhs: Group, rhs: Group) -> Bool {
        lhs.name == rhs.name && lhs.avatar == rhs.avatar
    }
}
