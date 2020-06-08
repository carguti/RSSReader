//
//  SplashScreenFactory.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 08/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import Foundation
import UIKit

struct SplashScreenFactory {
    static func makeSplashScreen(delegate: SplashScreenPresenterDelegate?) -> SplashScreenViewController {
        let viewController = SplashScreenViewController()
        let presenter = SplashScreenPresenter(splashScreenProtocol: viewController, delegate: delegate)
        viewController.presenter = presenter
        return viewController
    }
}
