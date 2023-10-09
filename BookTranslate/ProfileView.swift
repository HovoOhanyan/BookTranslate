//
//  ProfileView.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 22.08.23.
//

import UIKit

final class ProfileView: UIView {
    private let backgraoundView: UIView = {
        let backgraound = UIView()
        backgraound.backgroundColor = .customBlue
        backgraound.layer.cornerRadius = 30
        return backgraound
    }()
    
    private let personPhoto = PhotoView()
    
    //MARK: Label definitions
    
    private let nameLabel = UILabel(withText: "Anna Alaba", textColor: .black, font: .SFProRegular)
    private let emailLabel = UILabel(withText: "youremail@domain.com", textColor: .black, font: .SFProRegular)
    private let currentLanguageLabel = UILabel(withText: "English", textColor: .systemBlue, font: .SFProRegular)
    
    //MARK: CustomView definitions
    
    private let firstView = CustomView()
    private let secondView = CustomView()
    
    //MARK: Button definitions
    
    let editProfileButton = UIButton(titleText: "Edit profile information", titleColor: .customBlack)
    let changePasswordButton =  UIButton(titleText: "Change Password", titleColor: .customBlack)
    let notificationLabel = UILabel(withText: "Notification", textColor: .customBlack, font: .SFProRegular)
    let languageLabel =  UILabel(withText: "Language", textColor: .customBlack, font: .SFProRegular)
    
    let contactUsButton = UIButton(titleText: "Contact us", titleColor: .customBlack)
    let privacyPolicyButton = UIButton(titleText: "Privacy policy", titleColor: .customBlack)
    
    //MARK: Switch definition
    
    private let notificationSwitch: UISwitch = {
        let switcher = UISwitch()
        switcher.onTintColor = .customBlue
        switcher.translatesAutoresizingMaskIntoConstraints = false
        return switcher
    }()
    
    func setupUI() {
        //MARK: Backgraound settings
        backgraoundView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(backgraoundView)
        
        //MARK: Person photo settings
        
        personPhoto.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(personPhoto)
        
        //MARK: Label settings
        
        let labelStackView = UIStackView(arragedSubviews: [nameLabel, emailLabel], axis: .vertical, spacing: 8)
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        labelStackView.alignment = .center
        self.addSubview(labelStackView)
        
        //MARK: First View settings
        firstView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(firstView)
        
        //MARK: FirstStackView settings
        
        let firstStackView = firstStacKView()
        firstStackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(firstStackView)
        
        //MARK: Second View settings
        
        secondView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(secondView)
        
        //MARK: Second StackView settings
        
        let secondStackView = secondStackView()
        secondStackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(secondStackView)
        
        let notificationView = UIView(imageView: UIImageView(image: UIImage(named: "Notification")),
                                notification: notificationLabel, rightSideSwitch: notificationSwitch)
        
        notificationView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(notificationView)
       
        //MARK: Language label settings
        
        
        let languageView = UIView(imageView: UIImageView(image: UIImage(named: "Language")),
                                  notification: languageLabel, rightSideLabel: currentLanguageLabel)
        
        languageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(languageView)
        
        NSLayoutConstraint.activate([
            backgraoundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgraoundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgraoundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgraoundView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            personPhoto.topAnchor.constraint(equalTo: self.topAnchor, constant: 111),
            personPhoto.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            personPhoto.widthAnchor.constraint(equalToConstant: 119),
            personPhoto.heightAnchor.constraint(equalToConstant: 119),
        ])
        
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: personPhoto.bottomAnchor, constant: 24),
            labelStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 108),
            labelStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -110),
        ])
        
        NSLayoutConstraint.activate([
            firstView.topAnchor.constraint(equalTo: labelStackView.bottomAnchor, constant: 58),
            firstView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 23),
            firstView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -23),
            firstView.heightAnchor.constraint(equalToConstant: 170),
        ])
        
        NSLayoutConstraint.activate([
            firstStackView.topAnchor.constraint(equalTo: firstView.topAnchor, constant: 13),
            firstStackView.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 15),
            firstStackView.trailingAnchor.constraint(equalTo: firstView.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            notificationView.topAnchor.constraint(equalTo: firstStackView.bottomAnchor, constant: 13),
            notificationView.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 15),
            notificationView.trailingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: -10),
        ])
        
        NSLayoutConstraint.activate([
            languageView.topAnchor.constraint(equalTo: notificationView.bottomAnchor, constant: 13),
            languageView.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 15),
            languageView.trailingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: -10),
        ])
        
        NSLayoutConstraint.activate([
            secondView.topAnchor.constraint(equalTo: firstView.bottomAnchor, constant: 16),
            secondView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 23),
            secondView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -23),
            secondView.heightAnchor.constraint(equalToConstant: 85),
        ])
        
        NSLayoutConstraint.activate([
            secondStackView.topAnchor.constraint(equalTo: secondView.topAnchor, constant: 13),
            secondStackView.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 15),
            secondStackView.trailingAnchor.constraint(equalTo: secondView.trailingAnchor, constant: -10),
            secondStackView.bottomAnchor.constraint(equalTo: secondView.bottomAnchor, constant: -11)
        ])
        
//        NSLayoutConstraint.activate([
//            notificationSwitch.topAnchor.constraint(equalTo: firstView.topAnchor, constant: 80),
//            notificationSwitch.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 272),
//            notificationSwitch.trailingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: -20),
//            notificationSwitch.bottomAnchor.constraint(equalTo: firstView.bottomAnchor, constant: -57),
//        ])
//        
//        NSLayoutConstraint.activate([
//            languageLabel.topAnchor.constraint(equalTo: notificationSwitch.bottomAnchor, constant: 10),
//            languageLabel.leadingAnchor.constraint(equalTo: firstView.leadingAnchor, constant: 260),
//            languageLabel.trailingAnchor.constraint(equalTo: firstView.trailingAnchor, constant: -10),
//        ])
    }
    
    
    private func firstStacKView() -> UIStackView {
        let firstImage = UIImageView(image: UIImage(named: "Group"))
        let secondImage = UIImageView(image: UIImage(named: "LockButton"))
        let thirdImage = UIImageView(image: UIImage(named: "Notification"))
        let fourthImage = UIImageView(image: UIImage(named: "Language"))
        
        firstImage.contentMode = .scaleAspectFit
        secondImage.contentMode = .scaleAspectFit
        thirdImage.contentMode = .scaleAspectFit
        fourthImage.contentMode = .scaleAspectFit
        
        let firstStackView = UIStackView(arragedSubviews: [firstImage, editProfileButton],
                                         axis: .horizontal, spacing: 13)
        
        let secondStackView = UIStackView(arragedSubviews: [secondImage, changePasswordButton],
                                         axis: .horizontal, spacing: 13)
        
        let mainStackView = UIStackView(arragedSubviews: [firstStackView, secondStackView],
                                        axis: .vertical, spacing: 14)
       
        mainStackView.alignment = .leading
        return mainStackView
    }
    
    private func secondStackView() -> UIStackView {
        let firstImage = UIImageView(image: UIImage(named: "Chat"))
        
        let secondImage = UIImageView(image: UIImage(named: "Lock3"))
        
        firstImage.contentMode = .scaleToFill
        secondImage.contentMode = .scaleToFill
        
        let firstStackView = UIStackView(arragedSubviews: [firstImage, contactUsButton],
                                         axis: .horizontal, spacing: 13)
        
        
        let secondStackView = UIStackView(arragedSubviews: [secondImage, privacyPolicyButton],
                                         axis: .horizontal, spacing: 13)
        
        let mainStackView = UIStackView(arragedSubviews: [firstStackView, secondStackView],
                                        axis: .vertical, spacing: 14)
        mainStackView.alignment = .leading
        
        return mainStackView
    }
}
