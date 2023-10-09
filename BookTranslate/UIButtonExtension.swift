//
//  UIButtonExtension.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 19.08.23.
//

import Foundation
import UIKit

extension UIButton {
    convenience init(titleText: String, titleColor: UIColor, backgroundColor: UIColor,
                     rightSideImage: UIImage? = nil, leftSideImage: UIImage? = nil,
                     isShadow: Bool = false, isFilterButton: Bool = false) {
        self.init(type: .system)
        
        self.setTitle(titleText, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = 10
        self.semanticContentAttribute = .forceRightToLeft
                
        if isFilterButton {
            self.titleLabel?.font = .buttonFont
            self.layer.cornerRadius = 12.3
        }
        
        if let rightSideImage {
            let imageView = UIImageView(image: rightSideImage)

            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.tintColor = .white

            self.addSubview(imageView)
            NSLayoutConstraint.activate([
                imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
            ])
        }
        
        if let leftSideImage {
            self.setImage(leftSideImage, for: .normal)
            self.semanticContentAttribute = .forceLeftToRight
            self.tintColor = .white
            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: -5)
            self.imageEdgeInsets = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 5)
        }
        
        if isShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOpacity = 0.5
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
            self.layer.shadowRadius = 5
            self.layer.masksToBounds = false
        }
    }
    
    convenience init(titleText: String, titleColor: UIColor) {
        self.init(type: .system)
        
        self.setTitle(titleText, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
    }
    
    func costomizeGoogleButton() {
        let googleLogo = UIImageView(image: UIImage(named: "googleImage"), contentMode: .scaleAspectFit)
        
        googleLogo.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(googleLogo)
        
        NSLayoutConstraint.activate([
            googleLogo.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -46),
            googleLogo.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    convenience init(withTitle: String, leftSideImage: UIImage?) {
        self.init()
        
        self.setTitle(withTitle, for: .normal)
        
        if let leftSideImage {
            self.setImage(leftSideImage, for: .normal)
            self.semanticContentAttribute = .forceLeftToRight
            self.tintColor = .white
            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: -5)
            self.imageEdgeInsets = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 5)
        }
    }
}
