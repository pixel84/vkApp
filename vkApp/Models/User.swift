//
//  User.swift
//  vkApp
//
//  Created by Alex Shader on 03.06.2020.
//  Copyright © 2020 shaderness. All rights reserved.
//

import UIKit

class User {
    var name: String
    var surname: String
    var avatar: UIImage?
    var photos: [UIImage] = []
    
    init(name: String, surname: String, avatar: String) {
        self.name = name
        self.surname = surname
        let img = UIImage(named: avatar)
        self.avatar = img
        if let unwrappedImage = img {
            self.photos = Array(repeating: unwrappedImage, count: 10)
        }
    }
    
}
