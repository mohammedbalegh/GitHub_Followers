//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by mohammed balegh on 8/13/20.
//  Copyright © 2020 mohammed balegh. All rights reserved.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        cinfigureItems()
    }
    
    private func cinfigureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backGroundColor: .systemPurple, title: "GitHub Profile")
        
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
