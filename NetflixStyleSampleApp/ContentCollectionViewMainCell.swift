//
//  ContentCollectionViewMainCell.swift
//  NetflixStyleSampleApp
//
//  Created by 신새별 on 2022/03/22.
//

import UIKit

class ContentCollectionViewMainCell: UICollectionViewCell {
  let baseStackView = UIStackView()
  let menuStackView = UIStackView()
  
  let tvButton = UIButton()
  let movieButton = UIButton()
  let categoryButton = UIButton()
  
  let imageView = UIImageView()
  let descriptionLabel = UILabel()
  let contentStackView = UIStackView()
  
  let plusButton = UIButton()
  let playButton = UIButton()
  let infoButton = UIButton()
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    [baseStackView, menuStackView].forEach { e in
      contentView.addSubview(e)
    }
    
    // baseStackView
    baseStackView.axis = .vertical
    baseStackView.alignment = .center
    baseStackView.distribution = .fillProportionally
    baseStackView.spacing = 5
    
    [imageView, descriptionLabel, contentStackView].forEach { e in
      baseStackView.addArrangedSubview(e)
    }
    // ImageView
    imageView.contentMode = .scaleAspectFit
    imageView.snp.makeConstraints { e in
      e.width.top.leading.trailing.equalToSuperview()
      e.height.equalTo(imageView.snp.width)
    }
    // Description Label
    descriptionLabel.font = .systemFont(ofSize: 13)
    descriptionLabel.textColor = .white
    descriptionLabel.sizeToFit()
    
    // ContentStackView
    contentStackView.axis = .horizontal
    contentStackView.alignment = .center
    contentStackView.distribution = .equalCentering
    contentStackView.spacing = 20
    
    [plusButton, infoButton].forEach { e in
      
      e.titleLabel?.font = .systemFont(ofSize: 13)
      e.setTitleColor(.white, for: .normal)
      e.imageView?.tintColor = .white
      e.adjustVerticalLayout(5)
    }
    plusButton.setTitle("내가 찜한 콘텐츠", for: .normal)
    plusButton.setImage(UIImage(systemName: "plus"), for: .normal)
    plusButton.addTarget(self, action: #selector(plusButtonTapped), for: .touchUpInside)
    
    infoButton.setTitle("정보", for: .normal)
    infoButton.setImage(UIImage(systemName: "info.circle"), for: .normal)
    infoButton.addTarget(self, action: #selector(infoButtonTapped), for: .touchUpInside)
    

    playButton.setTitle("▶︎ 재생", for: .normal)
    playButton.setTitleColor(.black, for: .normal)
    playButton.backgroundColor = .white
    playButton.layer.cornerRadius = 3
    playButton.snp.makeConstraints { e in
      e.width.equalTo(90)
      e.height.equalTo(30)
    }
    playButton.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
    
    [plusButton, playButton, infoButton].forEach { e in
      contentStackView.addArrangedSubview(e)
    }

    contentStackView.snp.makeConstraints { e in
      e.leading.trailing.equalToSuperview().inset(30)
      e.height.equalTo(60)
    }
    
    baseStackView.snp.makeConstraints { e in
      e.edges.equalToSuperview()
    }
    
    //menuStackView
    menuStackView.axis = .horizontal
    menuStackView.alignment = .center
    menuStackView.distribution = .equalSpacing
    menuStackView.spacing = 20
    
    [tvButton, movieButton, categoryButton].forEach { e in
      menuStackView.addArrangedSubview(e)
      e.setTitleColor(.white, for: .normal)
      e.layer.shadowColor = UIColor.black.cgColor
      e.layer.shadowOpacity = 1
      e.layer.shadowRadius = 3
    }
    
    tvButton.setTitle("TV 프로그램", for: .normal)
    movieButton.setTitle("영화", for: .normal)
    categoryButton.setTitle("카테고리", for: .normal)
    
    tvButton.addTarget(self, action: #selector(tvButtonTapped), for: .touchUpInside)
    movieButton.addTarget(self, action: #selector(movieButtonTapped), for: .touchUpInside)
    categoryButton.addTarget(self, action: #selector(categoryButtonTapped), for: .touchUpInside)
    
    menuStackView.snp.makeConstraints { e in
      e.top.equalTo(baseStackView)
      e.leading.trailing.equalToSuperview().inset(30)
    }
  }
  
  @objc func tvButtonTapped(sender: UIButton!) {
    NSLog("TEST: TVButton Tapped")
  }
  @objc func movieButtonTapped(sender: UIButton!) {
    NSLog("TEST: movieButton Tapped")
  }
  @objc func categoryButtonTapped(sender: UIButton!) {
    NSLog("TEST: categoryButton Tapped")
  }
  @objc func plusButtonTapped(sender: UIButton!) {
    NSLog("TEST: plusButton Tapped")
  }
  @objc func infoButtonTapped(sender: UIButton!) {
    NSLog("TEST: infoButton Tapped")
  }
  @objc func playButtonTapped(sender: UIButton!) {
    NSLog("TEST: playButton Tapped")
  }
}
