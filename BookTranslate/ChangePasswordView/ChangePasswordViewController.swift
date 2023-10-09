//
//  ChangePasswordViewController.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 27.08.23.
//

import UIKit

final class ChangePasswordViewController: UIViewController {
    private let changePasswordView = ChangePasswordView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(changePasswordView)
        changePasswordView.translatesAutoresizingMaskIntoConstraints = false
        
        changePasswordView.arrowLeftButton.addTarget(self, action: #selector(arrowLeftButtonTapped), for: .touchUpInside)

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: changePasswordView.arrowLeftButton)
        
        NSLayoutConstraint.activate([
            changePasswordView.topAnchor.constraint(equalTo: view.topAnchor),
            changePasswordView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            changePasswordView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            changePasswordView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        changePasswordView.setupUI()
    }
    
    @objc private func arrowLeftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
