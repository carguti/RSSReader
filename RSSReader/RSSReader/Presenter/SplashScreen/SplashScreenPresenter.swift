//
//  SplashScreenPresenter.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 08/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import Foundation

protocol SplashScreenPresenterDelegate: class {
    func goToFeedList(feedImages: [AnyObject], feed: NSArray)
}

class SplashScreenPresenter {
    let splashScreenProtocol: SplashScreenProtocol
    weak var delegate: SplashScreenPresenterDelegate?
    
    var myFeed : NSArray = []
    var feedImgs: [AnyObject] = []
    var url: URL!
    
    init(splashScreenProtocol: SplashScreenProtocol, delegate: SplashScreenPresenterDelegate?) {
        self.splashScreenProtocol = splashScreenProtocol
        self.delegate = delegate
    }
    
    func getData() {
        url = URL(string: "https://feeds.skynews.com/feeds/rss/technology.xml")!
        let xmlParser = XMLParserManager().initWithURL(url) as! XMLParserManager
        
        feedImgs = xmlParser.img as [AnyObject]
        myFeed = xmlParser.feeds
        
        delegate?.goToFeedList(feedImages: feedImgs, feed: myFeed)
    }
}
