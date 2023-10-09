//
//  UITextFieldExtesnion.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 19.08.23.
//

import Foundation
import UIKit

final class CustomTextField: UITextField {
    private var leftImageView: UIImageView!
    
    var eyeConfiguration: Bool = false
    
    
    convenience init(placeholder: String, leftSideImage image: UIImage?, isPasswordTextField: Bool) {
        self.init()
        self.placeholder = placeholder
        self.layer.cornerRadius = 12
        
        if let image {
            leftImageView = UIImageView(image: image)
            leftImageView.tintColor = .lightGray
        } else {
            print("nil")
        }
        
        setupSelfConstraints()
        
        if isPasswordTextField {
            self.isSecureTextEntry = true
            
            let eyeButton: UIButton = {
                let button = UIButton()
                button.addTarget(self, action: #selector(eyeButtonTapped), for: .touchUpInside)
                return button
            }()
            eyeButtonSettings(button: eyeButton)
        }
    }
    
    private func setupSelfConstraints() {
        self.placeholder = text
        self.borderStyle = .roundedRect
        
        leftImageView?.contentMode = .center
        leftImageView?.clipsToBounds = true
        
        leftView = leftImageView
        leftViewMode = .unlessEditing
    }
    
    private func eyeButtonSettings(button: UIButton) {
        if self.isSecureTextEntry {
            button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            
            button.tintColor = .lightGray
            rightView = button
            rightViewMode = .always
        } else {
            button.setImage(UIImage(systemName: "eye"), for: .normal)
            self.isSecureTextEntry = false
            button.tintColor = .lightGray
            rightView = button
            rightViewMode = .always
        }
    }
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var rect = super.leftViewRect(forBounds: bounds)
        rect.origin.x += 15
        return rect
    }
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var rect = super.rightViewRect(forBounds: bounds)
        rect.origin.x -= 15
        return rect
    }
    
    @objc func eyeButtonTapped(button: UIButton) {
        eyeConfiguration = !eyeConfiguration
        self.isSecureTextEntry = !self.isSecureTextEntry
        eyeButtonSettings(button: button)
    }
}

