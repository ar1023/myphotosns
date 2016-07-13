//
//  HomeViewController.swift
//  myPhotoSns
//
//  Created by 土屋陽香 on 2016/07/12.
//  Copyright © 2016年 Haruka Tsuchiya. All rights reserved.
//

import UIKit

class RankViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
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
        return 5
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timelines.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //タイムラインのセル
        let cell = tableView.dequeueReusableCellWithIdentifier("Rank") as! RankItemTabeleViewCell
            cell.timeline = self.timelines[indexPath.section]
        return cell
    }
    
}

