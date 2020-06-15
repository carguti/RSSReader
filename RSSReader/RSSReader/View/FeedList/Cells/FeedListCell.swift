//
//  FeedListCell.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 10/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import UIKit
import SDWebImage

class FeedListCell: UITableViewCell {
    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}

extension FeedListCell {
    func configureFeed(notice: AnyObject, noticeImage: String) {
        titleLabel.text = notice.object(forKey: "title") as? String
        
        let feedDate = (notice.object(forKey: "pubDate") as? String)?.prefix(16)
        if let feedDescription = feedDate {
            descriptionLabel.text = String(feedDescription)
        }
        getImage(urlString: noticeImage) { (noticeImage) in
            self.setNeedsDisplay()
        }
    }
    
    func getImage(urlString: String, completion: @escaping (UIImage) -> ()) {
        feedImageView.sd_setImage(with: URL(string: urlString), placeholderImage: nil)
    }
}
