//
//  SignInView.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 19.08.23.
//

import Foundation
import UIKit

final class SignInView: UIView {
    //MARK: - Text Field definition
    
    private let emailTextField = CustomTextField(placeholder: "Email",
                                                 leftSideImage: UIImage(named: "Message"),
                                                 isPasswordTextField: false)
    
    private let passwordTextField = CustomTextField(placeholder: "Password",
                                                    leftSideImage: UIImage(named: "Lock"),
                                                    isPasswordTextField: true)
    
    //MARK: - Label definition
    
    private let signInLabel = UILabel(withText: "Sign In", textColor: .customBlack, font: .SFProMedium)
    private let rememberMeLabel = UILabel(withText: "Remember Me", textColor: .customBlack, font: .SFProRegular)
    private let orLabel = UILabel(withText: "OR", textColor: .customLightGray, font: .SFProRegular)
    private let dontHaveAnAccountLabel = UILabel(withText: "Don't have an account?", textColor: .customBlack, font: .SFProRegular)
    
    //MARK: - Buttons definition
    
    let signInButton = UIButton(titleText: "SIGN IN", titleColor: .white, backgroundColor: .customBlue,
                                rightSideImage: UIImage(systemName: "arrow.right"))
    
    private let googleButton = UIButton(titleText: "Login with Google", titleColor: .customBlack,
                                        backgroundColor: .white, rightSideImage: nil, isShadow: true)
    
    let forgotPasswordButton = UIButton(titleText: "Forgot Password?", titleColor: .customBlack)
    let signUpButton = UIButton(titleText: "Sign up", titleColor: .systemBlue)
    
    //MARK: - Switch definition
    
    private var rememberMeSwitch: UISwitch {
        let switcher = UISwitch()
        switcher.onTintColor = .customBlue
        return switcher
    }
    
    
    func setupConstrains() {
        self.addSubview(signInLabel)
        signInLabel.translatesAutoresizingMaskIntoConstraints = false
    
        //MARK: - TextField Settings
        
        let textFieldStackView = UIStackView(arragedSubviews: [emailTextField, passwordTextField], axis: .vertical, spacing: 20)
        self.addSubview(textFieldStackView)
        
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Password"
        
        textFieldStackView.translatesAutoresizingMaskIntoConstraints = false
        textFieldStackView.alignment = .fill
        textFieldStackView.distribution = .fillEqually
        
        //MARK: - SwitchStackView settings
        
        let switchStackView = UIStackView(arragedSubviews: [rememberMeSwitch, rememberMeLabel], axis: .horizontal, spacing: 7)
        
        let forgotPasswordStackView = UIStackView(arragedSubviews: [switchStackView, forgotPasswordButton], axis: .horizontal, spacing: 40)
        
        self.addSubview(forgotPasswordStackView)
        forgotPasswordStackView.translatesAutoresizingMaskIntoConstraints = false
        
        //MARK: Sign In Button settings
        
        self.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        //MARK: OR label settings
        
        orLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(orLabel)

        //MARK: Google button settings
        
        googleButton.costomizeGoogleButton()
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(googleButton)
        
        
        //MARK: sign up button settings
        
        let signUpStackView = UIStackView(arragedSubviews: [dontHaveAnAccountLabel, signUpButton], axis: .horizontal, spacing: 0)
        signUpStackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(signUpStackView)
        
        //MARK: SignInLabel AutoLayout
        
        NSLayoutConstraint.activate([
            signInLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 218),
            signInLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            signInLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            signInLabel.heightAnchor.constraint(equalToConstant: 29)
        ])
        
        //MARK: Text Field stack view AutoLayout
        
        NSLayoutConstraint.activate([
            textFieldStackView.topAnchor.constraint(equalTo: signInLabel.bottomAnchor, constant: 30),
            textFieldStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            textFieldStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            textFieldStackView.heightAnchor.constraint(equalToConstant: 130)
        ])
        
        //MARK: Forgot password stack view AutoLayout
        
        NSLayoutConstraint.activate([
            forgotPasswordStackView.topAnchor.constraint(equalTo: textFieldStackView.bottomAnchor, constant: 20),
            forgotPasswordStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            forgotPasswordStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
        ])
        
        //MARK: SignIn button AutoLayout
        
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: forgotPasswordStackView.bottomAnchor, constant: 36),
            signInButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            signInButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            signInButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        //MARK: or label auto layout
        
        NSLayoutConstraint.activate([
            orLabel.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 22),
            orLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            orLabel.heightAnchor.constraint(equalToConstant: 34)
        ])
        
        //MARK: Google button auto layout
        
        NSLayoutConstraint.activate([
            googleButton.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 13),
            googleButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            googleButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            googleButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        //MARK: signUp auto layout
        
        NSLayoutConstraint.activate([
            signUpStackView.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 85),
            signUpStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 73),
            signUpStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -73),
            signUpStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -38)
        ])
    }
    
}
