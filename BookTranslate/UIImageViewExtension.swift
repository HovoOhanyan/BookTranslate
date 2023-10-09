//
//  UIImageViewExtension.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 19.08.23.
//

import Foundation
import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
