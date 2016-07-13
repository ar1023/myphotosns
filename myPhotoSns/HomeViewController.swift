//
//  HomeViewController.swift
//  myPhotoSns
//
//  Created by 土屋陽香 on 2016/07/12.
//  Copyright © 2016年 Haruka Tsuchiya. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    // 表示するタイムラインの配列
    private var timelines: [Timeline] = Timelines.allTimelines() {
        didSet { //更新された時になにかする
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //サイズに合うものにする
        tableView.estimatedRowHeight = 400
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func PostViewControllerDidPost(timeline: Timeline) {
        var newTimelines = timelines
        newTimelines.insert(timeline, atIndex: 0)
        timelines = newTimelines
    }
    
//    //投稿ボタンをタップしたときに画面を開くことができる
//    @IBAction func composeButtonTapped(sender: AnyObject) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewControllerWithIdentifier("PostViewController") as! PostViewController
//        vc.delegate = self
//        presentViewController(vc, animated: true, completion: nil)
//    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return timelines.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //タイムラインのセル
        let cell = tableView.dequeueReusableCellWithIdentifier("Timeline") as! TimelineTableViewCell
        //ヘッダーのセル
        let timeline = timelines[indexPath.section]
        cell.timeline = timeline
        
        //likeのアップデートのブロック
        //セルで呼ばれる
        cell.likeButtonBlock = { [weak self, weak cell] in
            var newTimeline = timeline
            
            if newTimeline.isLiked {
                newTimeline.isLiked = false
            } else {
                newTimeline.isLiked = true
            }
            
            if newTimeline.isLiked {
                newTimeline.likedCount += 1
            } else {
                newTimeline.likedCount -= 1
            }
            
            self?.timelines[indexPath.section] = newTimeline
            cell?.timeline = self?.timelines[indexPath.section]
        }
        //セレクトできなくする
        cell.selectionStyle = .None
        
        return cell
    }
    
    //タイトルとなるヘッダー。
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCellWithIdentifier("Header") as! HeaderTableViewCell
        //タイムラインの数がセクションに分けられてるから
        
        let timeline = timelines[section]
        cell.timeline = timeline
        
        cell.selectionStyle = .None
        
        return cell
    }
    //高さ固定
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}

