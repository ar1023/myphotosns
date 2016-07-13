//
//  Timeline.swift
//  Swiftagram
//
//  Created by 土屋陽香 on 2016/07/12.
//  Copyright © 2016年 Haruka Tsuchiya. All rights reserved.
//

import UIKit
var jsonDictionary = []

struct Timeline {
        
    let user: User
    let place: String
    let postImage: UIImage
    var isLiked: Bool
    var likedCount: Int
    let postComment: String
    let time: String

    init(user: User, place: String, postImage: UIImage, isLiked: Bool, likedCount: Int, postComment: String, time: String) {
        self.user = user
        self.place = place
        self.postImage = postImage
        self.isLiked = isLiked
        self.likedCount = likedCount
        self.postComment = postComment
        self.time = time
    }
}
