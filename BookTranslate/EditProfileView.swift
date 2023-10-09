//
//  EditProfileViewController.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 27.08.23.
//

import UIKit

final class EditProfileView: UIView {
    private let backgraoundView: UIView = {
        let backgraound = UIView()
        backgraound.backgroundColor = .customBlue
        backgraound.layer.cornerRadius = 30
        return backgraound
    }()
    
    private let personPhoto = PhotoView()
    
    private let nameLabel = UILabel(withText: "Anna Alaba", textColor: .customBlack, font: .SFProMedium)
    
    private let nameTextField = CustomTextField(placeholder: "Full name",
                                                leftSideImage: UIImage(named: "Person"),
                                                isPasswordTextField: false)
    
    private let emailTextField = CustomTextField(placeholder: "Email",
                                                leftSideImage: UIImage(named: "Message"),
                                                isPasswordTextField: false)
    
    private let submitButton = UIButton(titleText: "SUBMIT", titleColor: .white, backgroundColor: .customBlue,
                                        rightSideImage: UIImage(systemName: "arrow.right"))
    
    let arrowLeftButton = UIButton()
    
    func setupUI() {
        setupArrowLeftButton()
        
        backgraoundView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(backgraoundView)
        
        personPhoto.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(personPhoto)
        
        //MARK: Name label settings
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(nameLabel)
        
        //MARK: StackView settings
        
        let stackView = UIStackView(arragedSubviews: [nameTextField, emailTextField], axis: .vertical,
                                    spacing: 19)
        
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        nameTextField.placeholder = "Full name"
        emailTextField.placeholder = "Email"
        self.addSubview(stackView)
        
        //MARK: Submite button settings
        
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(submitButton)
        
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
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 245),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 110),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -120),
            nameLabel.heightAnchor.constraint(equalToConstant: 29),
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 41),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 35),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -29),
            stackView.heightAnchor.constraint(equalToConstant: 130),
        ])
        
        NSLayoutConstraint.activate([
            submitButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 53),
            submitButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            submitButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -54),
            submitButton.heightAnchor.constraint(equalToConstant: 58),
        ])
    }
    
    private func setupArrowLeftButton() {
        arrowLeftButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        arrowLeftButton.imageView?.tintColor = .white
    }

}
