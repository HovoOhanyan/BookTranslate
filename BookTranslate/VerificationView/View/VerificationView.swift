//
//  VerificationView.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 20.08.23.
//

import UIKit

final class VerificationView: UIView {
    //MARK: Label definitions
    
    private let verificationLabel = UILabel(withText: "Verification", textColor: .customBlack, font: .SFProMedium)
    private let textLabel = UILabel(withText: "We've send you the verification code on your email",
                                    textColor: .customBlack, font: .SFProRegular)
    private let resendCodeLabel = UILabel(withText: "Re-send code in ", textColor: .customBlack, font: .SFProRegular)
    
    //MARK: TextField Definitions
    
    private let firstTextField = UITextField(isVerificationTextField: true)
    private let secondTextField = UITextField(isVerificationTextField: true)
    private let thirdTextField = UITextField(isVerificationTextField: true)
    private let fourthTextField = UITextField(isVerificationTextField: true)
    
    //MARK: Button definitons
    
    private let continueButton = UIButton(titleText: "CONTINUE", titleColor: .white, backgroundColor: .customBlue,
                                          rightSideImage: UIImage(systemName: "arrow.right"))
    
    private let sendButton = UIButton()
    let arrowLeftButton = UIButton()

    
    private var stackView = UIStackView()
        
    private var timer: Timer?
    private var secondsCounter = 0

    func setupUI() {
        setupArrowLeftButton()
        //MARK: Verification Label settings
        
        verificationLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(verificationLabel)
        
        //MARK: Text field settings
        
        textLabel.numberOfLines = 0
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(textLabel)
        
        //MARK: Text field stack view settings
        
        stackView = UIStackView(arragedSubviews: [firstTextField, secondTextField,
                                                  thirdTextField, fourthTextField],
                                axis: .horizontal, spacing: 29)
        
        firstTextField.delegate = self
        secondTextField.delegate = self
        thirdTextField.delegate = self
        fourthTextField.delegate = self
        
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(stackView)
        
        //MARK: Continue button settings
        
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(continueButton)
        
        //MARK: Send stack view settings
        
        let sendStackView = UIStackView(arragedSubviews: [resendCodeLabel, sendButton], axis: .horizontal, spacing: 0)
        
        setupSendButton()
        sendStackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(sendStackView)
        
        //MARK: Verification auto layout
        
        NSLayoutConstraint.activate([
            verificationLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 96),
            verificationLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 29),
            verificationLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -210),
            verificationLabel.heightAnchor.constraint(equalToConstant: 29),
        ])
        
        //MARK: Text label auto layout
        
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: verificationLabel.bottomAnchor, constant: 13),
            textLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 29),
            textLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -146),
            textLabel.heightAnchor.constraint(equalToConstant: 50),
        ])
        
        //MARK: StackView auto layout
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 27),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 35),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -35),
            stackView.heightAnchor.constraint(equalToConstant: 55),
        ])
        
        //MARK: Continue button auto layout
        
        NSLayoutConstraint.activate([
            continueButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 40),
            continueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 52),
            continueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -52),
            continueButton.heightAnchor.constraint(equalToConstant: 58),
        ])
        
        NSLayoutConstraint.activate([
            sendStackView.topAnchor.constraint(equalTo: continueButton.bottomAnchor, constant: 24),
            sendStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 109),
            sendStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -109),
            sendStackView.heightAnchor.constraint(equalToConstant: 25),
        ])
    }
    
    private func setupSendButton() {
        sendButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        sendButton.setTitleColor(.systemBlue, for: .normal)
        sendButton.isEnabled = false
        sendButton.addTarget(self, action: #selector(sendButtonTapped), for: .touchUpInside)
        startTimer()
    }
    
    private func startTimer() {
        timer?.invalidate()

        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] timer in
            guard let self = self else {
                timer.invalidate()
                return
            }
            
            // Increment the seconds counter
            self.secondsCounter += 1
            
            // Check if 20 seconds have passed
            if self.secondsCounter >= 20 {
                // Enable the button and update its title
                self.sendButton.isEnabled = true
                self.sendButton.setTitle("Send", for: .normal)
                
                // Reset the timer and counter
                self.timer?.invalidate()
                self.secondsCounter = 0
            } else {
                // Update the button's title to show the remaining seconds
                let remainingSeconds = 20 - self.secondsCounter
                if remainingSeconds >= 10 {
                    self.sendButton.setTitle("00:\(remainingSeconds)", for: .disabled)
                } else {
                    self.sendButton.setTitle("00:0\(remainingSeconds)", for: .disabled)
                }
            }
        }
    }
    
    @objc private func sendButtonTapped() {
        startTimer()
        
        sendButton.isEnabled = false
        sendButton.setTitle("Send", for: .disabled)
    }
}

//MARK: - Text field delegate implementation

extension VerificationView: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print("Connect")

        guard let character = string.first, character.isNumber else {
            print("false")
            return false
        }
                
        if let currentIndex = stackView.subviews.firstIndex(of: textField) {
            // Set the entered character to the current text field
            textField.text = String(character)
            
            // Move to the next text field or resign if it's the last one
            let nextIndex = currentIndex + 1
            if nextIndex < stackView.subviews.count {
                stackView.subviews[nextIndex].becomeFirstResponder()
            } else {
                textField.resignFirstResponder()
            }
        } else {
            print("false")
        }
        
        return false
    }
    
    private func setupArrowLeftButton() {
        arrowLeftButton.setImage(UIImage(named: "ArrowLeft"), for: .normal)
    }
}
