//
//  Book.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 30.08.23.
//
import UIKit
final class BookView: UIView {
    //MARK: UIView definitions
    
    private let backgroundView: UIView = {
        let backgraound = UIView()
        backgraound.backgroundColor = .customBlue
        backgraound.layer.cornerRadius = 30
        return backgraound
    }()
    
    
    let bottomView = UIView()
    
    let scrollView = UIScrollView()
    private var scrollViewCurrentFrame: CGRect!
    
    //MARK: Buttons definitions
    
    let closeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "cancel"), for: .normal)
        return button
    }()
    
    //MARK: Futchers view
    
    private let undeerlinesView = ButtonView(imageView: UIImageView(image: UIImage(systemName: "underline")),
                                             buttonLabel: UILabel(withText: "UNDERLINES",
                                                                  textColor: UIColor(red: 1, green: 1, blue: 1, alpha: 0.75),
                                                                  font: UIFont(name: "SFPro-Regular", size: 9.2)))
    
    private let notesView = ButtonView(imageView: UIImageView(image: UIImage(systemName: "list.bullet.clipboard")),
                                       buttonLabel: UILabel(withText: "NOTES",
                                                            textColor: UIColor(red: 1, green: 1, blue: 1, alpha: 0.75),
                                                            font: UIFont(name: "SFPro-Regular", size: 9.2)))
    
    private let pagesView = PagesView()
    
    private var showSubviews = true
    
    private var topConstraint: NSLayoutConstraint!
    private var bottomConstraint: NSLayoutConstraint!
    //MAKR: -
    
    func setupUI() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        scrollView.addGestureRecognizer(tapGesture)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(scrollView)
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(backgroundView)
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.addSubview(closeButton)
        
        setupBottomView()
        self.addSubview(bottomView)
        
        undeerlinesView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.addSubview(undeerlinesView)
        
        
        let stackView = UIStackView(arragedSubviews: [undeerlinesView, pagesView, notesView],
                                    axis: .horizontal, spacing: 80)
        
        stackView.setCustomSpacing(70, after: pagesView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(stackView)
        
        bottomConstraint = bottomView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        topConstraint = backgroundView.topAnchor.constraint(equalTo: self.topAnchor)
        
        NSLayoutConstraint.activate([
            backgroundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgroundView.heightAnchor.constraint(equalToConstant: 107),
            topConstraint
        ])
        
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 66),
            closeButton.widthAnchor.constraint(equalToConstant: 24),
            closeButton.heightAnchor.constraint(equalToConstant: 24),
            closeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
        ])
        
        NSLayoutConstraint.activate([
            bottomView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 80),
            bottomConstraint
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 7),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -30),
        ])
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: backgroundView.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomView.topAnchor)
        ])
    }
    
    private func setupBottomView() {
        bottomView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
        bottomView.layer.shadowOpacity = 1
        bottomView.layer.shadowOffset = CGSize(width: 0, height: -0.31)
        bottomView.layer.masksToBounds = false
        bottomView.backgroundColor = .white
        bottomView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        showSubviews.toggle()
        
        UIView.animate(withDuration: 0.5) { [self] in
            if showSubviews {
                bottomConstraint.constant = 0
                topConstraint.constant = 0
            } else {
                bottomConstraint.constant += bottomView.frame.height
                topConstraint.constant -= backgroundView.frame.height
            }
            
            layoutIfNeeded()
        }
    }
}
