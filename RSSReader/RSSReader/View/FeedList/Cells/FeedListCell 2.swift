//
//  FeedListCell.swift
//  RSSReader
//
//  Created by Carlos Gutierrez Casado on 10/06/2020.
//  Copyright © 2020 Carlos Gutierrez Casado. All rights reserved.
//

import UIKit

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
        
    }
//    func configureWithCharacter(character: Character) {
//        nameLabel.text = character.name
//        guard var path = character.thumbnail?.path else { return }
//        path.insert("s", at: path.index(path.startIndex, offsetBy: +4))
//        guard let imageExtension = character.thumbnail?.imageExtension else { return }
//
//        getImage(urlString: path+imageType+imageExtension) { backgroundImage in
//            self.setNeedsDisplay()
//        }
//    }
//
//    func getImage(urlString: String, completion: @escaping (UIImage) -> ()) {
//        backgroundImageView.sd_setImage(with: URL(string: urlString), placeholderImage: nil)
//    }
}
