//
//  BookViewController.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 30.08.23.
//

import Foundation
import UIKit

final class BookViewController: UIViewController {
    private let bookView = BookView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        view.addSubview(bookView)
        bookView.translatesAutoresizingMaskIntoConstraints = false
        
        bookView.closeButton.addTarget(self, action: #selector(cancelButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            bookView.topAnchor.constraint(equalTo: view.topAnchor),
            bookView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bookView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bookView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        bookView.setupUI()
    }
    
    @objc private func cancelButtonTapped() {
        dismiss(animated: true)
    }
}
