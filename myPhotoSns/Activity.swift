//
//  Activity.swift
//  Swiftagram
//
//  Created by 土屋陽香 on 2016/07/12.
//  Copyright © 2016年 Haruka Tsuchiya. All rights reserved.
//

import UIKit

struct Activity {
    let user: User
    let isCommentType: Bool
    let time: String
    let likedImage: String
    
    init(user: User, isCommentType: Bool, time: String, likedImage: String) {
        self.user = user
        self.isCommentType = isCommentType
        self.time = time
        self.likedImage = likedImage
    }
}
