//
//  ContentCollectionViewCell.swift
//  NetflixStyleSampleApp
//
//  Created by 신새별 on 2022/03/22.
//

import UIKit
import SnapKit

class ContentCollectionViewCell: UICollectionViewCell {
  let imageView = UIImageView()
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    contentView.backgroundColor = .white
    contentView.layer.cornerRadius = 5
    contentView.clipsToBounds = true
    
    imageView.contentMode = .scaleToFill
    
    contentView.addSubview(imageView)
    
    imageView.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
  
  }
}
