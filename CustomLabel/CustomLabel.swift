//
//  CustomLabel.swift
//  CustomLabel
//
//  Created by Sümeyye Kılıçoğlu on 16.09.2022.
//

import UIKit
import TinyConstraints

struct ACustomLabelModel {
    let firstText: String
    let image: UIImage?
    let backgroundColor: UIColor?
}
class CustomLabel: UILabel {

    
    private let Alabel: UILabel = {
        let Alabel = UILabel()
        Alabel.numberOfLines = 1
        Alabel.textAlignment = .center
        Alabel.textColor = .white
        Alabel.font = .systemFont(ofSize: 18, weight: .semibold)
        return Alabel
    }()
    private let BimageView: UIImageView = {
        let Bimage  = UIImageView()
        Bimage.tintColor = .white
        Bimage.contentMode = .scaleAspectFill
        Bimage.clipsToBounds = true
        return Bimage
    }()

    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(Alabel)
        addSubview(BimageView)
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.secondarySystemBackground.cgColor

        
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
  
    func configure(with viewModel: CustomLabelModel) {
        Alabel.text = viewModel.firstText
        BimageView.image = viewModel.image
        backgroundColor = viewModel.backgroundColor
        
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        Alabel.sizeToFit()
        Alabel.leftToSuperview().constant = 100
        Alabel.topToSuperview().constant = 5
        Alabel.rightToSuperview().constant = -20
        Alabel.topToSuperview().constant = 20
        
        
      
        BimageView.width(20)
        BimageView.height(20)
        BimageView.topToSuperview().constant = 27
        BimageView.leftToSuperview().constant = 150
        
        
}
}
