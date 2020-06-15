//
//  FeedDetailPresenter.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 14/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import Foundation
import UIKit

protocol  FeedDetailPresenterDelegate: class {
    func didTapBack()
}

class FeedDetailPresenter {
    let feedDetailProtocol: FeedDetailProtocol
    weak var delegate: FeedDetailPresenterDelegate?
    
    init(feedDetailProtocol: FeedDetailProtocol, delegate: FeedDetailPresenterDelegate?) {
        self.feedDetailProtocol = feedDetailProtocol
        self.delegate = delegate
    }
    
    func showInBrowser(url: String) {
        let str = url
        let trimmed = str.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if let url = URL(string: trimmed) {
            var path = url.path
            path.insert("s", at: path.index(path.startIndex, offsetBy: +4))
            UIApplication.shared.open(url)
        }
    }
    
    func didTapBack() {
        delegate?.didTapBack()
    }
}
