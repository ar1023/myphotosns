//
//  RankItemCollectionViewCell.swift
//  myPhotoSns
//
//  Created by 土屋陽香 on 2016/07/12.
//  Copyright © 2016年 Haruka Tsuchiya. All rights reserved.
//
//
import UIKit

class RankItemTabeleViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    var timeline: Timeline? {
        didSet {
            guard let timeline = timeline else {
                return
            }
            
            profileImageView.image = UIImage(named: timeline.user.profileImage)

//            for numberLabel.text = 1; numberLabel.text < 11; numberLabel.text++ {
//                // iはInt型になる
//                numberLabel.text++
//            }
            

        }
    }
    
    //画像を丸めるときはawakeFromNib()
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImageView.layer.cornerRadius = profileImageView.layer.bounds.width/2
        profileImageView.clipsToBounds = true
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        profileImageView.image = nil
    }
}