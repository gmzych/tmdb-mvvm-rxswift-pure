//
//  CarouselSection.swift
//  tmdb-mvvm-pure
//
//  Created by krawiecp-home on 28/01/2019.
//  Copyright © 2019 tailec. All rights reserved.
//

import UIKit

final class CarouselSectionCell: UITableViewCell {
    @IBOutlet weak var collectionViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        let layout: UICollectionViewFlowLayout = {
            let layout = UICollectionViewFlowLayout()
            layout.estimatedItemSize = CGSize(width: 140, height: 235)
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
            return layout
        }()
        
        collectionView.register(UINib(nibName: String(describing: MovieCell.self), bundle: nil),
                                forCellWithReuseIdentifier: String(describing: MovieCell.self))
        collectionView.collectionViewLayout = layout
        collectionViewHeightConstraint.constant = MovieCell.height(forWidth: 140)
        collectionViewHeightConstraint.isActive = true
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        
        configureAccessibilityId()
    }
}

extension CarouselSectionCell {
    var collectionViewOffset: CGFloat {
        get { return collectionView.contentOffset.x }
        set { collectionView.contentOffset.x = newValue }
    }
    
    func setCollectionViewDataSourceDelegate<D: UICollectionViewDataSource & UICollectionViewDelegate>(_ dataSourceDelegate: D, forRow row: Int) {
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.tag = row
        collectionView.setContentOffset(collectionView.contentOffset, animated:false) // Stops collection view if it was scrolling.
        collectionView.reloadData()
    }
    
    private func configureAccessibilityId() {
        titleLabel.accessibilityIdentifier = "discoverCarouselTitleLabel"
        subtitleLabel.accessibilityIdentifier = "discoverCarouselSubtitleLabel"
        collectionView.accessibilityIdentifier = "discoverCarouselCollectionView"
    }
}
