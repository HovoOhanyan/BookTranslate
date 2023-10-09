//
//  SignUpView.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 19.08.23.
//

import UIKit

final class SignUpView: UIView {
    //MARK: Labels definition
    
    private let signUpLabel = UILabel(withText: "Sign up", textColor: .customBlack, font: .SFProMedium)
    private let orLabel = UILabel(withText: "OR", textColor: .customLightGray, font: .SFProRegular)
    private let alreadyHaveAnAccountLabel = UILabel(withText: "Already have an account?", textColor: .customBlack,
                                                    font: .SFProRegular)
    
    //MARK: Text fields definition
    
    private let fullNameTextField = CustomTextField(placeholder: "Full name", leftSideImage: UIImage(named: "Person"), isPasswordTextField: false)
    private let emailTextField = CustomTextField(placeholder: "Email", leftSideImage: UIImage(named: "Message"), isPasswordTextField: false)
    private let passwordTextField = CustomTextField(placeholder: "Your password", leftSideImage: UIImage(named: "Lock"), isPasswordTextField: true)
    private let confirmPasswordTextField = CustomTextField(placeholder: "Confirm password", leftSideImage: UIImage(named: "Lock"), isPasswordTextField: true)
    
    //MARK: Buttons definition
    
    private let signUpButton = UIButton(titleText: "SIGN UP",
                                        titleColor: .white, backgroundColor: .customBlue,
                                        rightSideImage: UIImage(systemName: "arrow.right"))
    
    private let googleButton = UIButton(titleText: "Login with Google", titleColor: .customBlack,
                                        backgroundColor: .white, rightSideImage: nil, isShadow: true)
    
    let signInButton = UIButton(titleText: "Sign in", titleColor: .systemBlue)

    let arrowLeftButton = UIButton()
    
    func setupUI() {
        setupArrowLeftButton()
        //MARK: Sign up label settings
        
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(signUpLabel)
        
        //MARK: Text Field stackView settings
        
        let textFieldStackView = UIStackView(arragedSubviews: [fullNameTextField, emailTextField,
                                                               passwordTextField, confirmPasswordTextField],
                                             axis: .vertical, spacing: 19)
        
        textFieldStackView.distribution = .fillEqually
        self.addSubview(textFieldStackView)
        textFieldStackView.translatesAutoresizingMaskIntoConstraints = false
        
        fullNameTextField.placeholder = "Full name"
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Your password"
        confirmPasswordTextField.placeholder = "Confirm password"
        
        //MARK: Sign up Button settings
        
        self.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        //MARK: Or label settings
        
        self.addSubview(orLabel)
        orLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //MARK: Google button settings
        
        googleButton.costomizeGoogleButton()
        self.addSubview(googleButton)
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        
        //MARK: Already have an account
        
        let labelStackView = UIStackView(arragedSubviews: [alreadyHaveAnAccountLabel, signInButton], axis: .horizontal, spacing: 0)
        
        self.addSubview(labelStackView)
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        
        //MARK: Sign up label auto layout
        
        NSLayoutConstraint.activate([
            signUpLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            signUpLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            signUpLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -250),
            signUpLabel.heightAnchor.constraint(equalToConstant: 29)
        ])
        
        NSLayoutConstraint.activate([
            textFieldStackView.topAnchor.constraint(equalTo: signUpLabel.bottomAnchor, constant: 21),
            textFieldStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            textFieldStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            textFieldStackView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            signUpButton.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 21),
            signUpButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 52),
            signUpButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -52),
            signUpButton.heightAnchor.constraint(equalToConstant: 58)
        ])
        
        NSLayoutConstraint.activate([
            orLabel.topAnchor.constraint(equalTo: signUpButton.bottomAnchor, constant: 36),
            orLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 175),
            orLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -175),
            orLabel.heightAnchor.constraint(equalToConstant: 34)
        ])
        
        NSLayoutConstraint.activate([
            googleButton.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 13),
            googleButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 51),
            googleButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -51),
            googleButton.heightAnchor.constraint(equalToConstant: 56)
        ])
        
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 80),
            labelStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
            labelStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            labelStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -38)
        ])
    }
    
    private func setupArrowLeftButton() {
        arrowLeftButton.setImage(UIImage(named: "ArrowLeft"), for: .normal)
    }
}
