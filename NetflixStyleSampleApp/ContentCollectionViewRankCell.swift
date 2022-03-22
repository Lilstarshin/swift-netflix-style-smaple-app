//
//  ContentCollectionViewRankCell.swift
//  NetflixStyleSampleApp
//
//  Created by 신새별 on 2022/03/22.
//

import UIKit
import SwiftUI

class ContentCollectionViewRankCell: UICollectionViewCell {
  let imageView = UIImageView()
  let rankLabel = UILabel()
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    // contentView
    contentView.layer.cornerRadius = 5
    contentView.clipsToBounds = true
    
    //imageView
    imageView.contentMode = .scaleToFill
    contentView.addSubview(imageView)
    imageView.snp.makeConstraints { e in
      e.top.trailing.bottom.equalToSuperview()
      e.width.equalToSuperview().multipliedBy(0.8)
    }
    
    //rankLabel
    rankLabel.font = .systemFont(ofSize: 100, weight: .black)
    rankLabel.textColor = .white
    contentView.addSubview(rankLabel)
    rankLabel.snp.makeConstraints { e in
      e.leading.equalToSuperview()
      e.bottom.equalToSuperview().offset(25)
    }
    
  }
}
