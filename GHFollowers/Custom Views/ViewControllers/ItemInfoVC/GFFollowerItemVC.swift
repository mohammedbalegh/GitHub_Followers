//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by mohammed balegh on 8/13/20.
//  Copyright © 2020 mohammed balegh. All rights reserved.
//

import UIKit

class GFFolllweItemVC: GFItemInfoVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        cinfigureItems()
    }
    
    private func cinfigureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backGroundColor: .systemGreen, title: "Get Followers")
        
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}
