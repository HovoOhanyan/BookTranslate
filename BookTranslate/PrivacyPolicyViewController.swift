//
//  PrivacyPolicyViewController.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 27.08.23.
//

import UIKit

final class PrivacyPolicyViewController: UIViewController {
    private let privacyPolicyView = PrivacyPolicyView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(privacyPolicyView)
        privacyPolicyView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            privacyPolicyView.topAnchor.constraint(equalTo: view.topAnchor),
            privacyPolicyView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            privacyPolicyView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            privacyPolicyView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        privacyPolicyView.setupUI()
        
        privacyPolicyView.arrowLeftButton.addTarget(self, action: #selector(arrowLeftButtonTapped), for: .touchUpInside)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: privacyPolicyView.arrowLeftButton)
    }
    
    @objc private func arrowLeftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
