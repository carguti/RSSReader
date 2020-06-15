//
//  GeneralCoordinator.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 08/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import Foundation
import UIKit

class GeneralCoordinator: CoordinatorProtocol {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController = UINavigationController()) {
        self.navigationController = navigationController
    }
    
    func start() {
        showSplashScreen()
    }
    
    func showFeedListScreen(feedImages: [AnyObject], feed: NSArray) {
        let scene = SplashScreenFactory.makeFeedList(delegate: self, feedImages:feedImages, feed: feed)
        navigationController.viewControllers = [scene]
    }
    
    func showFeedDetail(feedImage: AnyObject, feedNotice: AnyObject) {
        let scene = FeedListFactory.makeDetailScreen(delegate: self, feedImage: feedImage, feedNotice: feedNotice)
        navigationController.viewControllers = [scene]
    }
}

extension GeneralCoordinator {
    func showSplashScreen() {
        let scene = SplashScreenFactory.makeSplashScreen(delegate: self)
        navigationController.viewControllers = [scene]
    }
}

extension GeneralCoordinator: SplashScreenPresenterDelegate {
    func goToFeedList(feedImages: [AnyObject], feed: NSArray) {
        showFeedListScreen(feedImages: feedImages, feed: feed)
    }
}

extension GeneralCoordinator: FeedListPresenterDelegate {
    func showFeedDetailScreen(feedImage: AnyObject, feedNotice: AnyObject) {
        showFeedDetail(feedImage: feedImage, feedNotice: feedNotice)
    }
}

extension GeneralCoordinator: FeedDetailPresenterDelegate {
    func didTapBack() {
        showFeedListScreen(feedImages: FeedManager.shared.getFeedImages(), feed: FeedManager.shared.getFeed())
    }
}
