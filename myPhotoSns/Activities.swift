//
//  Activities.swift
//  Swiftagram
//
//  Created by 土屋陽香 on 2016/07/12.
//  Copyright © 2016年 Haruka Tsuchiya. All rights reserved.
//

import UIKit

class Activities {
    static func allActivities() -> [Activity] {
        var activities: [Activity] = []
        activities.append(Activity(user: User(username: "yuzushioh", profileImage: "yuzushioh",number: 1), isCommentType: false, time: "3M", likedImage: "image4"))
        activities.append(Activity(user: User(username: "Alex", profileImage: "profile2", number: 2), isCommentType: false, time: "4M", likedImage: "image8"))
        activities.append(Activity(user: User(username: "Tigar", profileImage: "profile6", number: 3), isCommentType: true, time: "46M", likedImage: "image3"))
        activities.append(Activity(user: User(username: "Keen", profileImage: "profile10", number: 4), isCommentType: false, time: "1H", likedImage: "image7"))
//        activities.append(Activity(user: User(username: "Jeff", profileImage: "profile11"), isCommentType: false, time: "4H", likedImage: "image2"))
//        activities.append(Activity(user: User(username: "Mark", profileImage: "profile8"), isCommentType: true, time: "8H", likedImage: "image11"))
//        activities.append(Activity(user: User(username: "Arman", profileImage: "profile4"), isCommentType: false, time: "1D", likedImage: "image5"))
//        activities.append(Activity(user: User(username: "Tigar", profileImage: "profile6"), isCommentType: false, time: "1D", likedImage: "image7"))
//        activities.append(Activity(user: User(username: "Jack", profileImage: "profile9"), isCommentType: false, time: "3D", likedImage: "image8"))
//        activities.append(Activity(user: User(username: "Alex", profileImage: "profile2"), isCommentType: false, time: "5D", likedImage: "image10"))
//        activities.append(Activity(user: User(username: "yuzushioh", profileImage: "yuzushioh"), isCommentType: false, time: "1W", likedImage: "image1"))
//        activities.append(Activity(user: User(username: "Dog", profileImage: "profile7"), isCommentType: false, time: "2W", likedImage: "image5"))
        
        return activities
    }
}
