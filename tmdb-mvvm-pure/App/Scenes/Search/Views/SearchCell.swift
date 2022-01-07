//
//  SearchCell.swift
//  tmdb-mvvm-pure
//
//  Created by krawiecp-home on 30/01/2019.
//  Copyright © 2019 tailec. All rights reserved.
//

import UIKit
import Nuke

class SearchCell: UITableViewCell {
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        selectionStyle = .none
    }
    
    func configure(withImageUrl url: String?,
                   title: String,
                   subtitle: String) {
        if let url = url {
            Nuke.loadImage(with: URL(string: url)!, into: titleImageView)
        }
        titleLabel.text = title
        subtitleLabel.text = subtitle
    }
}

extension SearchCell {
    func configure(withSearchResultItemViewModel item: SearchResultItemViewModel) {
        configure(withImageUrl: item.imageUrl,
                  title: item.title,
                  subtitle: item.subtitle)
    }
}
