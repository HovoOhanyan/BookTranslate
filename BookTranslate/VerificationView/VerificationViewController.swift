//
//  VerificationViewController.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 20.08.23.
//

import UIKit

final class VerificationViewController: UIViewController {
    private let verificationView = VerificationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white
        
        verificationView.frame = view.frame
        verificationView.bounds = view.bounds
        
        verificationView.arrowLeftButton.addTarget(self, action: #selector(arrowLeftButtonTapped), for: .touchUpInside)

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: verificationView.arrowLeftButton)
        view.addSubview(verificationView)
        verificationView.setupUI()
    }
    
    @objc private func arrowLeftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
