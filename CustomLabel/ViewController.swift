//
//  ViewController.swift
//  CustomLabel
//
//  Created by Sümeyye Kılıçoğlu on 16.09.2022.
//

import UIKit
import TinyConstraints

class ViewController: UIViewController {
    
    
let firstButton = FirstButton()
let firstLabel = CustomLabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(firstButton)
        firstButton.configure(with: CustomLabelModel(
            firstText: "Start Free Trial",
            image: UIImage(systemName: "swift"),
            backgroundColor: .link))
        
        firstButton.topToSuperview().constant = 50
        firstButton.leftToSuperview().constant = 40
        firstButton.rightToSuperview().constant = -40
        firstButton.width(300)
        firstButton.height(50)
        
        view.addSubview(firstLabel)
    
        firstLabel.configure(with: CustomLabelModel(
            firstText: "It's First Label",
            image: UIImage(systemName: "sum"),
            backgroundColor: .systemGreen))
        
        firstLabel.topToSuperview().constant = 500
        firstLabel.leftToSuperview().constant = 40
        firstLabel.rightToSuperview().constant = -40
        firstLabel.width(300)
        firstLabel.height(50)
        
    }


}

