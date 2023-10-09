//
//  ViewController.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 19.08.23.
//

import UIKit

final class SignInViewController: UIViewController {
    private let signInView = SignInView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        signInView.frame = self.view.frame
        signInView.bounds = self.view.bounds
        view.addSubview(signInView)
        signInView.signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        signInView.forgotPasswordButton.addTarget(self, action: #selector(ressetPasswordButtonTapped),
                                                  for: .touchUpInside)
        
        signInView.signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        signInView.setupConstrains()
    }
    
    
    @objc private func signUpButtonTapped() {
        let nextVC = SignUpViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc private func signInButtonTapped() {
        let nextVC = UITabBarController()
        
        let library = UINavigationController(rootViewController: LibraryViewController())
        let profile = UINavigationController(rootViewController: ProfileViewController())
        let add = AddViewController()
        
        nextVC.viewControllers = [library, add, profile]
        
        library.tabBarItem = UITabBarItem(title: "Library", image: UIImage(named: "Library"), tag: 0)
        add.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "plus.circle.fill"), tag: 1)
        profile.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "profile"), tag: 2)
        
        nextVC.tabBar.backgroundColor = .white
        nextVC.tabBar.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        nextVC.tabBar.layer.cornerRadius = 8
        nextVC.tabBar.layer.shadowOpacity = 1
        nextVC.tabBar.layer.shadowOffset = CGSize(width: 0, height: -3)
        nextVC.tabBar.layer.shadowRadius = 10
        nextVC.tabBar.layer.masksToBounds = false
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true)
        
        
    }
    
    @objc func ressetPasswordButtonTapped() {
        let nextVC = RessetPasswordViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

