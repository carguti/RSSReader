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
    var presenter: FeedListPresenter!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}

extension FeedListViewController: FeedListProtocol { }
