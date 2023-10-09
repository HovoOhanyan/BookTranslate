//
//  CustomView.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 27.08.23.
//

import Foundation
import UIKit

final class CustomView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupConstraints()
    }
    
    private func setupConstraints() {
        self.backgroundColor = .white
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.cornerRadius = 10
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowRadius = 10
        self.clipsToBounds = false
        self.layer.masksToBounds = false
    }
}

