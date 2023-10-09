//
//  RessetPasswordView.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 20.08.23.
//

import UIKit

final class RessetPasswordView: UIView {
    //MARK: Label definitions
    
    private let ressetPasswordLabel = UILabel(withText: "Resset Password", textColor: .customBlack, font: .SFProMedium)
    private let textLabel = UILabel(withText: "Please enter your email address to request a password reset",
                                    textColor: .customBlack, font: .SFProRegular)
    
    private let emailTextField = CustomTextField(placeholder: "Email", leftSideImage: UIImage(named: "Message"),
                                                 isPasswordTextField: false)
    
    //MARK: Button definitions
    
    let sendButton = UIButton(titleText: "SEND", titleColor: .white, backgroundColor: .customBlue,
                                      rightSideImage: UIImage(systemName: "arrow.right"))
    let arrowLeftButton = UIButton()
    
    
    func setupUI() {
        setupArrowLeftButton()
        //MARK: Resset password label settings
        
        ressetPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(ressetPasswordLabel)
        
        ressetPasswordLabel.numberOfLines = 0
        
        //MARK: Text label settings
        
        textLabel.numberOfLines = 0
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textLabel)
        
        //MARK: Email Text Field settings
        
        emailTextField.placeholder = "Email"
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(emailTextField)
        
        //MARK: SEND button settings
        
        sendButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(sendButton)
        
        //MARK: Resset password label auto layout
        
        NSLayoutConstraint.activate([
            ressetPasswordLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 21),
            ressetPasswordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 28),
            ressetPasswordLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -140),
            ressetPasswordLabel.heightAnchor.constraint(equalToConstant: 29)
        ])
        
        //MARK: Text label auto layout
        
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: ressetPasswordLabel.bottomAnchor, constant: 13),
            textLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 28),
            textLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -103),
            textLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        //MARK: Email Text field auto layout
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 26),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 28),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            emailTextField.heightAnchor.constraint(equalToConstant: 56)
        ])
        
        //MARK: SEND button auto layout
        
        NSLayoutConstraint.activate([
            sendButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 40),
            sendButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 52),
            sendButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -52),
            sendButton.heightAnchor.constraint(equalToConstant: 58)
        ])
        
        
    }
    
    private func setupArrowLeftButton() {
        arrowLeftButton.setImage(UIImage(named: "ArrowLeft"), for: .normal)
    }
}
