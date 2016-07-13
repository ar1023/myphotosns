//
//  User.swift
//  Swiftagram
//
//  Created by 土屋陽香 on 2016/07/12.
//  Copyright © 2016年 Haruka Tsuchiya. All rights reserved.
//

import UIKit

struct User {
    let username: String
    let profileImage: String
    var number: Int
    
    init(username: String, profileImage: String, number: Int) {
        self.username = username
        self.profileImage = profileImage
        self.number = number
    }
}
