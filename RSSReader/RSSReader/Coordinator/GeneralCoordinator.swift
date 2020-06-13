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
        let scene = SplashScreenFactory.makeFeedList(delegate: self)
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
    
}
