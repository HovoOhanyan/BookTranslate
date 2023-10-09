//
//  UIStackViewExtension.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 19.08.23.
//

import Foundation
import UIKit

extension UIStackView {
    convenience init(arragedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arragedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
}
