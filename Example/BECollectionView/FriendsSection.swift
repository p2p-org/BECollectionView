//
//  FriendsSection.swift
//  BECollectionView_Example
//
//  Created by Chung Tran on 16/03/2021.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import BECollectionView

class FriendsSection: BECollectionViewSection {
    init(viewModel: BEListViewModelType) {
        super.init(
            layout: BECollectionViewSectionLayout(
                cellType: FriendCell.self,
                interGroupSpacing: 16,
                contentInsets: NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10),
                horizontalInterItemSpacing: .fixed(16),
                customLayoutForGroupOnSmallScreen: {_ in
                    Self.groupLayoutForFriendSection()
                },
                customLayoutForGroupOnLargeScreen: {_ in
                    Self.groupLayoutForFriendSection()
            }),
            viewModel: viewModel
        )
    }
    
    private static func groupLayoutForFriendSection() -> NSCollectionLayoutGroup {
        let itemSize = NSCollectionLayoutSize(widthDimension: .estimated(80), heightDimension: .estimated(73))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.interItemSpacing = .fixed(16)
        return group
    }
}
