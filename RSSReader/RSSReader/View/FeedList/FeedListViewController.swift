//
//  FeedListViewController.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 10/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import UIKit

protocol FeedListProtocol: class {
    
}

class FeedListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: FeedListPresenter!
    var arrFeedList: [AnyObject] = []
    var arrFeedImages: [AnyObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
        configureTable()
    }
}

extension FeedListViewController {
    private func configureTable() {
        tableView.register(UINib(nibName: "FeedListCell", bundle: nil), forCellReuseIdentifier: "FeedListCell")
    }
    
    private func configureView() {
        navigationController?.isNavigationBarHidden = true
    }
}

extension FeedListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrFeedList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let feedListCell = tableView.dequeueReusableCell(withIdentifier: "FeedListCell", for: indexPath) as! FeedListCell
        
        feedListCell.configureFeed(notice: arrFeedList[indexPath.row], noticeImage: arrFeedImages[indexPath.row] as! String)
        return feedListCell
    }
}

extension FeedListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectNotice(feedImage: arrFeedImages[indexPath.row], feedNotice: arrFeedList[indexPath.row])
    }
}

extension FeedListViewController: FeedListProtocol { }
