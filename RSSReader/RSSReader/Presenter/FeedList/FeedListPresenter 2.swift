//
//  FeedListPresenter.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 10/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import Foundation

protocol FeedListPresenterDelegate: class {
    
}

class FeedListPresenter {
    let feedListProtocol: FeedListProtocol
    weak var delegate: FeedListPresenterDelegate?
    
    init(feedListProtocol: FeedListProtocol, delegate: FeedListPresenterDelegate?) {
        self.feedListProtocol = feedListProtocol
        self.delegate = delegate
    }
}


