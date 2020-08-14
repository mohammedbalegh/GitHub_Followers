//
//  GFItemInfoView.swift
//  GHFollowers
//
//  Created by mohammed balegh on 8/12/20.
//  Copyright © 2020 mohammed balegh. All rights reserved.
//

import UIKit


enum ItemInfoType {
    case repos, gists, followers, following
}

class GFItemInfoView: UIView {

    let symbolImageView = UIImageView()
    let titleLbel       = GFTitleLabel(textAlignment: .left, fontSize: 14)
    let countLabel      = GFTitleLabel(textAlignment: .center, fontSize: 14)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        addSubview(symbolImageView)
        addSubview(titleLbel)
        addSubview(countLabel)
        
        symbolImageView.translatesAutoresizingMaskIntoConstraints = false
        symbolImageView.contentMode = .scaleAspectFit
        symbolImageView.tintColor   = .label
        
        NSLayoutConstraint.activate([
            symbolImageView.topAnchor.constraint(equalTo: self.topAnchor),
            symbolImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            symbolImageView.widthAnchor.constraint(equalToConstant: 20),
            symbolImageView.heightAnchor.constraint(equalToConstant: 20),
            
            titleLbel.centerYAnchor.constraint(equalTo: symbolImageView.centerYAnchor),
            titleLbel.leadingAnchor.constraint(equalTo: symbolImageView.trailingAnchor, constant: 12),
            titleLbel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            titleLbel.heightAnchor.constraint(equalToConstant: 18),
            
            countLabel.topAnchor.constraint(equalTo: symbolImageView.bottomAnchor, constant: 4),
            countLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            countLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            countLabel.heightAnchor.constraint(equalToConstant: 18)
        ])
        
        
    }
    
    func set(itemInfoType: ItemInfoType, withCount count: Int) {
        switch itemInfoType {
        case .repos:
            symbolImageView.image   = UIImage(systemName: SFSymbols.repos)
            titleLbel.text          = "Public repos"
        case .gists:
            symbolImageView.image   = UIImage(systemName: SFSymbols.gists)
            titleLbel.text          = "Public Gists"
        case .followers:
            symbolImageView.image   = UIImage(systemName: SFSymbols.followers)
            titleLbel.text          = "Followers"
        case .following:
            symbolImageView.image   = UIImage(systemName: SFSymbols.following)
            titleLbel.text          = "Following"
        }
        
        countLabel.text = String(count)

    }
}
