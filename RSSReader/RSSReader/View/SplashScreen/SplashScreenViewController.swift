//
//  SplashScreenViewController.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 08/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import UIKit

protocol SplashScreenProtocol: class {
    
}

class SplashScreenViewController: UIViewController {
    var presenter: SplashScreenPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension SplashScreenViewController: SplashScreenProtocol { }
