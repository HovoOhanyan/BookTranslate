//
//  UITextFieldExtension.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 20.08.23.
//

import Foundation
import UIKit

extension UITextField {
    convenience init(isVerificationTextField: Bool = true) {
        self.init()
        
        self.textAlignment = .center
        self.placeholder = "-"
        self.font = UIFont(name: "Roboto-Medium", size: 24)
        self.borderStyle = .roundedRect
        self.layer.cornerRadius = 12
        self.keyboardType = .numberPad
    }
}
