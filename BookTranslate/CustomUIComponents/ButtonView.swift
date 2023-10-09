//
//  ButtonView.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 31.08.23.
//

import Foundation
import UIKit

final class ButtonView: UIView {
    convenience init(imageView: UIImageView, buttonLabel: UILabel) {
        self.init()
        self.addSubview(imageView)
        self.addSubview(buttonLabel)
        
        imageView.tintColor = UIColor(red: 0.592, green: 0.592, blue: 0.592, alpha: 1)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        buttonLabel.textColor = UIColor(red: 0.592, green: 0.592, blue: 0.592, alpha: 1)
        buttonLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 3),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -3),
            imageView.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            buttonLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 4),
            buttonLabel.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
            buttonLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
    
}
