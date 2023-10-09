//
//  ChangePasswordView.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 27.08.23.
//

import UIKit

final class ChangePasswordView: UIView {
    private let backgraoundView: UIView = {
        let backgraound = UIView()
        backgraound.frame = CGRect(x: 0, y: 0, width: 375, height: 175)
        backgraound.backgroundColor = .customBlue
        backgraound.layer.cornerRadius = 30
        return backgraound
    }()
    
    //MARK: label definition
    
    private let changePasswordLabel = UILabel(withText: "Change Password", textColor: .customBlack, font: .SFProMedium)
    
    //MARK: Text Field definiton
    
    private let currentPasswordTextFiled = CustomTextField(placeholder: "Current password", leftSideImage: UIImage(named: "Lock"),
                                                           isPasswordTextField: true)
    
    private let newPasswordTextFiled = CustomTextField(placeholder: "New password", leftSideImage: UIImage(named: "Lock"),
                                                           isPasswordTextField: true)
    
    private let confirmNewPasswordTextFiled = CustomTextField(placeholder: "Confirm new password", leftSideImage: UIImage(named: "Lock"),
                                                           isPasswordTextField: true)
    
    //MARK: Button definition
    
    private let submitButton = UIButton(titleText: "SUBMIT", titleColor: .white, backgroundColor: .customBlue,
                                          rightSideImage: UIImage(systemName: "arrow.right"))
    
    let arrowLeftButton = UIButton()

    func setupUI() {
        setupArrowLeftButton()
        
        backgraoundView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(backgraoundView)
        
        //MARK: changePasswordLabel settings
        
        changePasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(changePasswordLabel)
        
        //MARK: Text field settings
        
        let stackView = UIStackView(arragedSubviews: [currentPasswordTextFiled, newPasswordTextFiled, confirmNewPasswordTextFiled],
                                    axis: .vertical, spacing: 19)
        
        currentPasswordTextFiled.placeholder = "Current password"
        newPasswordTextFiled.placeholder = "New password"
        confirmNewPasswordTextFiled.placeholder = "Confirm new password"
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        self.addSubview(stackView)
        
        //MARK: SUBMIT button settings
        
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(submitButton)
        
        //MARK: auto layout
        NSLayoutConstraint.activate([
            backgraoundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgraoundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgraoundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgraoundView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            changePasswordLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 245),
            changePasswordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 75),
            changePasswordLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -80),
            changePasswordLabel.heightAnchor.constraint(equalToConstant: 29)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: changePasswordLabel.bottomAnchor, constant: 31),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            stackView.heightAnchor.constraint(equalToConstant: 230)
        ])
        
        NSLayoutConstraint.activate([
            submitButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 26),
            submitButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 48),
            submitButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -56),
            submitButton.heightAnchor.constraint(equalToConstant: 58)
        ])
    }
    
    private func setupArrowLeftButton() {
        arrowLeftButton.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        arrowLeftButton.imageView?.tintColor = .white
    }
}
