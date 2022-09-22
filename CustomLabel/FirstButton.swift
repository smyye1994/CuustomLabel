//
//  FirstButton.swift
//  CustomLabel
//
//  Created by Sümeyye Kılıçoğlu on 16.09.2022.
//

import UIKit
import TinyConstraints


struct CustomLabelModel {
    let firstText: String
    let image: UIImage?
    let backgroundColor: UIColor?
}

class FirstButton: UIButton {
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    private let AimageView: UIImageView = {
        let image  = UIImageView()
        image.tintColor = .white
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()

    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        addSubview(AimageView)
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.secondarySystemBackground.cgColor

        
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
  
    func configure(with viewModel: CustomLabelModel) {
        label.text = viewModel.firstText
        AimageView.image = viewModel.image
        backgroundColor = viewModel.backgroundColor
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.sizeToFit()
        label.leftToSuperview().constant = 100
        label.topToSuperview().constant = 5
        label.rightToSuperview().constant = -20
        label.topToSuperview().constant = 20
        
        
      
        AimageView.width(20)
        AimageView.height(20)
        AimageView.topToSuperview().constant = 27
        AimageView.leftToSuperview().constant = 150
        
        
        
    }
}
