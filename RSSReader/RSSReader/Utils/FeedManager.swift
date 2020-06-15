//
//  FeedManager.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 15/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import Foundation

class FeedManager {
    static let shared = FeedManager()
    
    var feedNotices: NSArray = []
    var feedImgs: [AnyObject] = []
    
    private init(){}
    
    func getFeed() -> NSArray {
        return feedNotices
    }
    
    func getFeedImages() -> [AnyObject] {
        return feedImgs
    }
}
