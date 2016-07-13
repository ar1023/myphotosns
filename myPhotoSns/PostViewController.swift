//
//  PostViewController.swift
//  myPhotoSns
//
//  Created by 土屋陽香 on 2016/07/12.
//  Copyright © 2016年 Haruka Tsuchiya. All rights reserved.
//

import UIKit

    protocol PostViewControllerDelegate {
        func PostViewControllerDidPost(timeline: Timeline)
    }

class PostViewController: UIViewController,UITextViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
        @IBOutlet weak var postImageView: UIImageView!
        @IBOutlet weak var captionLabel: UILabel!
        
        
        @IBOutlet weak var textView: UITextView!
        
        
        //投稿する画像をpostImageView.imageに
        private var image: UIImage? = nil {
            didSet {
                self.postImageView.image = image
            }
        }
        
        private var text: String? = nil
        
        var delegate: PostViewControllerDelegate?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
        
        func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
            if info[UIImagePickerControllerOriginalImage] != nil {
                let image = info[UIImagePickerControllerOriginalImage] as! UIImage
                self.image = image
                dismissViewControllerAnimated(true, completion: nil)
            }
        }
    
        @IBAction func imageViewTapped(sender: AnyObject) {
        
            let controller = UIImagePickerController()
            controller.delegate = self
            controller.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            controller.allowsEditing = false
            presentViewController(controller, animated: true, completion: nil)
            
        }
        @IBAction func shereButtonTapped(sender: AnyObject) {
        
            guard let text = text, image = image else {
                return
            }
            
            let user = Users.myUser()
            let timeline = Timeline(user: user, place: "At your place", postImage: image, isLiked: false, likedCount: 0, postComment: text, time: "Just Now")
            delegate?.PostViewControllerDidPost(timeline)
            dismissViewControllerAnimated(true, completion: nil)
        
        }
    
    
    @IBAction func cancelButtonTapped(sender: AnyObject) {
        if textView.isFirstResponder() {
            textView.resignFirstResponder()
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
        //テキスト入力
        func textViewDidChange(textView: UITextView) {
            if textView.text == "" {
                text = nil
                captionLabel.hidden = false
            } else {
                text = textView.text
                captionLabel.hidden = true
            }
        }
}