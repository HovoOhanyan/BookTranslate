//
//  RessetPasswordViewController.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 20.08.23.
//

import UIKit

final class RessetPasswordViewController: UIViewController {
    private let ressetPasswordView = RessetPasswordView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        ressetPasswordView.frame = view.frame
        
        ressetPasswordView.bounds = view.bounds
        
        ressetPasswordView.sendButton.addTarget(self, action: #selector(sendButtonTapped), for: .touchUpInside)
        ressetPasswordView.arrowLeftButton.addTarget(self, action: #selector(arrowLeftButtonTapped), for: .touchUpInside)

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: ressetPasswordView.arrowLeftButton)
        view.addSubview(ressetPasswordView)
        
        ressetPasswordView.setupUI()
    }
    
    @objc private func sendButtonTapped() {
        let nextVC = VerificationViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc private func arrowLeftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
