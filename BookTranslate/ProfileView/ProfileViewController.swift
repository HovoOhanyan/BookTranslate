//
//  ProfileViewController.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 21.08.23.
//

import UIKit

class ProfileViewController: UIViewController {
    private let profileView = ProfileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(profileView)
        profileView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: view.topAnchor),
            profileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        profileView.setupUI()
        
        profileView.changePasswordButton.addTarget(self, action: #selector(changePasswordTapped),
                                                   for: .touchUpInside)
        
        profileView.editProfileButton.addTarget(self, action: #selector(editProfileTapped),
                                                for: .touchUpInside)
        
        profileView.privacyPolicyButton.addTarget(self, action: #selector(privacyPolicyButtonTapped),
                                                  for: .touchUpInside)

    }
    
    @objc private func changePasswordTapped() {
        let nextVC = ChangePasswordViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc private func editProfileTapped() {
        let nextVC = EditProfileViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc private func privacyPolicyButtonTapped() {
        let nextVC = PrivacyPolicyViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
