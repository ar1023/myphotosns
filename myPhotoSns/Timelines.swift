//
//  Timelines.swift
//  Swiftagram
//
//  Created by 土屋陽香 on 2016/07/12.
//  Copyright © 2016年 Haruka Tsuchiya. All rights reserved.
//

import UIKit

class Timelines {
    static func allTimelines() -> [Timeline] {
        
        
        
        var timelines: [Timeline] = []
        
        timelines.append(Timeline(user: User(username: "yuzushioh", profileImage: "yuzushioh", number:1), place: "Up in the sky", postImage: UIImage(named: "image1")!, isLiked: false, likedCount: 3245, postComment: "@jump_junkie – Sky diving in Arizona.", time: "12 MINUTES AGO"))
        timelines.append(Timeline(user: User(username: "Luke", profileImage: "profile1", number:2), place: "Ontario, Canada", postImage: UIImage(named: "image2")!, isLiked: false, likedCount: 344, postComment: "Once known for taking amazing video footage of sports and fun activities, the GoPro is now also known for taking pretty epic and high quality photos. Many of the photos shared on Instagram are just stunning. From travel photos, to extreme sports, to animal close ups, the @GoPro Instagram account is a must follow. Check out some of our favorite images! - See more at: https://blog.ink361.com/2015/07/13-epic-gopro-shots-instagram/#sthash.lA2glqsh.dpuf", time: "39 MINUTES AGO"))
        timelines.append(Timeline(user: User(username: "Alex", profileImage: "profile2", number: 3), place: "Las Vegas", postImage: UIImage(named: "image3")!, isLiked: true, likedCount: 9670, postComment: "@mishavladimirskiy – Electric Daisy Carnival in Las Vegas.", time: "46 MINUTES AGO"))
        timelines.append(Timeline(user: User(username: "Daivid", profileImage: "profile3", number:4), place: "Red Bull", postImage: UIImage(named: "image4")!, isLiked: false, likedCount: 3390, postComment: "@kirbychambliss – Red Bull Air Race.", time: "1 HOUR AGO"))
//        timelines.append(Timeline(user: User(username: "Arman", profileImage: "profile4"), place: "hawaii", postImage: UIImage(named: "image5")!, isLiked: true, likedCount: 12890, postComment: "@sf_photos_hawaii – Surfing on the North Shore of Oahu.", time: "2 HOURS AGO"))
//        timelines.append(Timeline(user: User(username: "Chris", profileImage: "profile5"), place: "Arizona", postImage: UIImage(named: "image6")!, isLiked: false, likedCount: 6289, postComment: "@travisburkephotography – The Wave, Arizona.", time: "2 HOURS AGO"))
//        timelines.append(Timeline(user: User(username: "Tigar", profileImage: "profile6"), place: "Kennia Africa", postImage: UIImage(named: "image7")!, isLiked: false, likedCount: 33890, postComment: "lionwhisperersa – Kevin Richardson aka The Lion Whisperer.", time: "3 HOURS AGO"))
//        timelines.append(Timeline(user: User(username: "Dog", profileImage: "profile7"), place: "@My Pool", postImage: UIImage(named: "image8")!, isLiked: false, likedCount: 344, postComment: "@ericmathews – Summertime fun in the pool!", time: "5 HOURS AGO"))
//        timelines.append(Timeline(user: User(username: "Mark", profileImage: "profile8"), place: "Turkey", postImage: UIImage(named: "image9")!, isLiked: true, likedCount: 11980, postComment: "@buraktuzer – Paragliding in Ölüdeniz, Turkey.", time: "5 HOURS AGO"))
//        timelines.append(Timeline(user: User(username: "Jack", profileImage: "profile9"), place: "Mexico", postImage: UIImage(named: "image10")!, isLiked: true, likedCount: 3390, postComment: "@seanruddiman – Secret beach in Mexico.", time: "7 HOURS AGO"))
//        timelines.append(Timeline(user: User(username: "Keen", profileImage: "profile10"), place: "Australia", postImage: UIImage(named: "image11")!, isLiked: false, likedCount: 4110, postComment: "@ab_roo – Great White Shark in Australia.", time: "9 HOURS AGO"))
//        timelines.append(Timeline(user: User(username: "Jeff", profileImage: "profile11"), place: "United Arab Emirates", postImage: UIImage(named: "image12")!, isLiked: true, likedCount: 89167, postComment: " @shoayb_khattab – Camels running on a track in United Arab Emirates.", time: "3 DAYS AGO"))
        
        return timelines
    }
}