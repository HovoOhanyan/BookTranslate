//
//  PhotoView.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 23.08.23.
//

import Foundation
import UIKit

final class PhotoView: UIView {
    let circleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.image = UIImage(systemName: "person.circle")
        imageView.contentMode = .scaleAspectFill
        imageView.tintColor = .customLightGray
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(circleImageView)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupConstraints() {        
        NSLayoutConstraint.activate([
            circleImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            circleImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            circleImageView.widthAnchor.constraint(equalToConstant: 119),
            circleImageView.heightAnchor.constraint(equalToConstant: 119)
        ])
    }
}

