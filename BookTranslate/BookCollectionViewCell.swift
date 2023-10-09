//
//  BookCollectionViewCell.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 27.08.23.
//

import UIKit

final class BookCell: UICollectionViewCell {
    
    private let homeImageView = UIImageView()
    
    private let starButton = UIButton()
    
    private let bookNameLabel = UILabel()
    private let readButton = UIButton(titleText: "READ", titleColor: .white, backgroundColor: .customBlue)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        self.backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1)
        self.layer.cornerRadius = 16
        
        
        homeImageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(homeImageView)
        
        bookNameLabel.translatesAutoresizingMaskIntoConstraints = false
        bookNameLabel.numberOfLines = 0
        bookNameLabel.font = UIFont(name: "Roboto-Medium", size: 14)
        
        self.addSubview(bookNameLabel)
        
        readButton.addTarget(self, action: #selector(sendButtonTapped), for: .touchUpInside)
        readButton.layer.cornerRadius = 15.5
        readButton.translatesAutoresizingMaskIntoConstraints = false
        readButton.titleLabel?.font = UIFont(name: "SFPro-Regular", size: 11.63)

        self.addSubview(readButton)
        
        starButton.addTarget(self, action: #selector(starButtonTapped), for: .touchUpInside)
        starButton.setImage(UIImage(named: "star"), for: .normal)
        starButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(starButton)
        
        NSLayoutConstraint.activate([
            homeImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 7.5),
            homeImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15.5),
            homeImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -236),
            homeImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -7.5)
        ])
        
        NSLayoutConstraint.activate([
            bookNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 7),
            bookNameLabel.leadingAnchor.constraint(equalTo: homeImageView.trailingAnchor, constant: 16),
            bookNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -51),
            bookNameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -62)
        ])
        
        NSLayoutConstraint.activate([
            readButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 70),
            readButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 259),
            readButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            readButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -7),
        ])
        
        NSLayoutConstraint.activate([
            starButton.topAnchor.constraint(equalTo: homeImageView.topAnchor, constant: 4),
            starButton.leadingAnchor.constraint(equalTo: homeImageView.leadingAnchor, constant: 5),
            starButton.trailingAnchor.constraint(equalTo: homeImageView.trailingAnchor, constant: -68),
            starButton.bottomAnchor.constraint(equalTo: homeImageView.bottomAnchor, constant: -83),
        ])

    }
    
    func configuration(image: UIImage, bookName: String) {
        self.homeImageView.image = image
        self.bookNameLabel.text = bookName
    }
    
    @objc func sendButtonTapped() {
        print(homeImageView.frame)
        print(bookNameLabel.frame)
        print(readButton.frame)
    }
    
    @objc func starButtonTapped() {
        print("Tapped")
    }
}
