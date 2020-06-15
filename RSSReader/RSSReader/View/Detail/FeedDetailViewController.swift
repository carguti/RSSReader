//
//  FeedDetailViewController.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 14/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import UIKit

protocol FeedDetailProtocol {
    
}

class FeedDetailViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var showInBrowserButton: UIButton!
    
    var presenter: FeedDetailPresenter!
    var feedImage: AnyObject?
    var feedNotice: AnyObject?
    var url: String?
    
    @IBAction func buttonBackPressed(_ sender: Any) {
        presenter.didTapBack()
    }
    
    @IBAction func buttonShowInBrowserPressed(_ sender: Any) {
        if let link = url {
            presenter.showInBrowser(url: link)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureDetailView()
    }
}

extension FeedDetailViewController {
    private func configureDetailView() {
        titleLabel.text = feedNotice?.object(forKey: "title") as? String
        getImage(urlString: feedImage as! String) { (noticeImage) in
            self.view.setNeedsDisplay()
        }
        descriptionLabel.text = feedNotice?.object(forKey: "description") as? String
        url = feedNotice?.object(forKey: "link") as? String
    }
    
    func getImage(urlString: String, completion: @escaping (UIImage) -> ()) {
        feedImageView.sd_setImage(with: URL(string: urlString), placeholderImage: nil)
    }
}

extension FeedDetailViewController: FeedDetailProtocol { }
