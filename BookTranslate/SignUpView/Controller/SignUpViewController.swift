//
//  SignUpViewController.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 19.08.23.
//

import UIKit

final class SignUpViewController: UIViewController {
    private let signUpView = SignUpView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        signUpView.frame = self.view.frame
        signUpView.bounds = self.view.bounds
        
        signUpView.signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        signUpView.arrowLeftButton.addTarget(self, action: #selector(arrowLeftButtonTapped), for: .touchUpInside)

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: signUpView.arrowLeftButton)
        view.addSubview(signUpView)
        signUpView.setupUI()
    }
    
    @objc private func signInButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func arrowLeftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
