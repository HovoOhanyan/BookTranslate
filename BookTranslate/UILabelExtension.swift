//
//  UILabelExtension.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 19.08.23.
//

import Foundation
import UIKit

extension UILabel {
    convenience init(withText text: String, textColor: UIColor, font: UIFont?) {
        self.init()
        
        self.text = text
        self.textColor = textColor
        self.font = font
    }
    
    
}
