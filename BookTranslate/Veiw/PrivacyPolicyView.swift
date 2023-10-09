//
//  PrivacyPolicy.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 27.08.23.
//

import UIKit

final class PrivacyPolicyView: UIView {
    private let backgraoundView: UIView = {
        let view = UIView()
        view.backgroundColor = .customBlue
        view.layer.cornerRadius = 20
        return view
    }()
    
    private let privacyPolicyLabel = UILabel(withText: "Privacy Policy", textColor: .customBlack,
                                             font: .SFProMedium)
    
    private let typesDataWeCollectLabel = UILabel(withText: "1. Types data we collect", textColor: .black,
                                                  font: .SFProRegular)
    
    private let useOfYourPersonalData = UILabel(withText: "2. Use of your personal data", textColor: .black,
                                                font: .SFProRegular)
    
    private let firstTextView = UILabel()
    private let secondTextView = UITextView()
    
    let arrowLeftButton = UIButton()
    
    func setupUI() {
        setupArrowLeftButton()
        
        backgraoundView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(backgraoundView)
        
        privacyPolicyLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(privacyPolicyLabel)
        
        firstTextView.text = """
Lorem ipsum dolor sit amet,
consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
nostrud exercitation ullamco laboris nisi ut
aliquip ex ea commodo consequat.

Duis aute irure dolor in reprehenderit in
voluptate velit esse cillum dolore eu fugiat
nulla pariatur. Excepteur sint occaecat
cupidatat non proident.
"""
        firstTextView.font = .SFProRegular
        firstTextView.numberOfLines = 0
        firstTextView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(firstTextView)
        
        typesDataWeCollectLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(typesDataWeCollectLabel)
        NSLayoutConstraint.activate([
            backgraoundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgraoundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgraoundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgraoundView.heightAnchor.constraint(equalToConstant: 62)
        ])
        
        NSLayoutConstraint.activate([
            privacyPolicyLabel.topAnchor.constraint(equalTo: backgraoundView.bottomAnchor, constant: 9),
            privacyPolicyLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            privacyPolicyLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
        
        NSLayoutConstraint.activate([
            typesDataWeCollectLabel.topAnchor.constraint(equalTo: privacyPolicyLabel.bottomAnchor, constant: 23),
            typesDataWeCollectLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            typesDataWeCollectLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -9),
        ])
        
        NSLayoutConstraint.activate([
            firstTextView.topAnchor.constraint(equalTo: typesDataWeCollectLabel.bottomAnchor, constant: 32),
            firstTextView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            firstTextView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -9),
        ])
    }
    
    private func setupArrowLeftButton() {
        arrowLeftButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        arrowLeftButton.imageView?.tintColor = .white
    }
}
