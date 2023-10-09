//
//  UIViewExtension.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 29.08.23.
//

import Foundation
import UIKit

extension UIView {
    convenience init(imageView: UIImageView, notification: UILabel, rightSideSwitch: UISwitch) {
        self.init()
    
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(imageView)
        
        notification.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(notification)
        
        rightSideSwitch.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rightSideSwitch)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
        
        NSLayoutConstraint.activate([
            notification.topAnchor.constraint(equalTo: self.topAnchor, constant: 2),
            notification.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 13),
            notification.heightAnchor.constraint(equalToConstant: 20),
            notification.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -2)
        ])
        
        NSLayoutConstraint.activate([
            rightSideSwitch.topAnchor.constraint(equalTo: self.topAnchor, constant: 1),
            rightSideSwitch.rightAnchor.constraint(equalTo: self.rightAnchor),
            rightSideSwitch.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1),
        ])
    }
    
    convenience init(imageView: UIImageView, notification: UILabel, rightSideLabel: UILabel) {
        self.init()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(imageView)
        
        notification.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(notification)
        
        rightSideLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rightSideLabel)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
        
        NSLayoutConstraint.activate([
            notification.topAnchor.constraint(equalTo: self.topAnchor, constant: 2),
            notification.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 13),
            notification.heightAnchor.constraint(equalToConstant: 20),
            notification.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1)
        ])
        
        NSLayoutConstraint.activate([
            rightSideLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 1),
            rightSideLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
            rightSideLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1),
        ])
    }
    
}
