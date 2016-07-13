//
//  TimelineTableViewCell.swift
//  myPhotoSns
//
//  Created by 土屋陽香 on 2016/07/12.
//  Copyright © 2016年 Haruka Tsuchiya. All rights reserved.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var likeCountLabel: UILabel!

    @IBOutlet weak var commentLabel: UILabel!
    
    @IBOutlet weak var likeButtonIcon: UIButton!
    
    
        var likeButtonBlock: (Void -> Void)?
        
        //タイムラインのプロパティ
        var timeline: Timeline? {
            didSet { //タイムラインが実際あるかどうか
                guard let timeline = timeline else {
                    return
                }
                
                //photoImageView.image = timeline.postImage
                
                
                //let likeIcon = timeline.isLiked ? "Activity-on" : "Activity"
                
                if timeline.isLiked{ //likeされてるとき
                    likeButtonIcon.setBackgroundImage(UIImage(named: "Activity-on"), forState: .Normal)
                }else{ //されてないとき
                    likeButtonIcon.setBackgroundImage(UIImage(named: "Activity"), forState: .Normal)
                }
                
                //likeButtonIcon.setImage(UIImage(named: likeIcon), forState: .Normal)
                
                likeCountLabel.text = "\(timeline.likedCount) likes"
                
                commentLabel.text = timeline.postComment
                
                
            }
        }
        
        //ダブルタップでもできる
        override func awakeFromNib() {
            let doubleTapGesture = UITapGestureRecognizer(target: self, action: Selector(handleDoubleTap()))
            doubleTapGesture.numberOfTapsRequired = 2
            self.addGestureRecognizer(doubleTapGesture)
        }
        
        override func prepareForReuse() {
            super.prepareForReuse()
            
            photoImageView.image = nil
            likeButtonIcon.setImage(nil, forState: .Normal)
            commentLabel.text = nil
        }
    
        func handleDoubleTap(gesture: UITapGestureRecognizer? = nil) {
            likeButtonBlock?()
        }
    
        @IBAction func likeButtonTapped(sender: AnyObject) {
            likeButtonBlock?()
        }

}
