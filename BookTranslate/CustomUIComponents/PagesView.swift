//
//  PagesView.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 01.09.23.
//

import Foundation
import UIKit

final class PagesView: UIView {
    private let pagesLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private func setupUI() {
        self.backgroundColor = UIColor(red: 0.29, green: 0.263, blue: 0.925, alpha: 1)
        self.layer.cornerRadius = 8
        
        pagesLabel.text = "1/200 pages"
        pagesLabel.font = UIFont(name: "Roboto-Regular", size: 12)
        pagesLabel.textColor = .white
        
        pagesLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(pagesLabel)
        
        NSLayoutConstraint.activate([
            pagesLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            pagesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            pagesLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            pagesLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
    
    func changeLabelText(withText: String) {
        pagesLabel.text = withText
    }
}
