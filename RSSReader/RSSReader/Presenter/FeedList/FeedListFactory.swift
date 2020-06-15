//
//  FeedListFactory.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 10/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import Foundation
import UIKit

struct FeedListFactory {
    static func makeDetailScreen(delegate: FeedDetailPresenterDelegate?, feedImage: AnyObject, feedNotice: AnyObject) -> FeedDetailViewController {
        let viewController = FeedDetailViewController()
        let presenter = FeedDetailPresenter(feedDetailProtocol: viewController, delegate: delegate)
        viewController.presenter = presenter
        viewController.feedImage = feedImage
        viewController.feedNotice = feedNotice
        return viewController
    }
}
