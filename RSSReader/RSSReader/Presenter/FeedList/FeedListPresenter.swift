//
//  FeedListPresenter.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 10/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import Foundation

protocol FeedListPresenterDelegate: class {
    func showFeedDetailScreen(feedImage: AnyObject, feedNotice: AnyObject)
}

class FeedListPresenter {
    let feedListProtocol: FeedListProtocol
    weak var delegate: FeedListPresenterDelegate?
    
    init(feedListProtocol: FeedListProtocol, delegate: FeedListPresenterDelegate?) {
        self.feedListProtocol = feedListProtocol
        self.delegate = delegate
    }
    
    func didSelectNotice(feedImage: AnyObject, feedNotice: AnyObject) {
        delegate?.showFeedDetailScreen(feedImage: feedImage, feedNotice: feedNotice)
    }
}


