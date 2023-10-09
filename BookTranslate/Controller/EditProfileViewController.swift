//
//  EditProfileViewController.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 27.08.23.
//

import UIKit

final class EditProfileViewController: UIViewController {
    private let editPorfileView = EditProfileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(editPorfileView)
        editPorfileView.translatesAutoresizingMaskIntoConstraints = false
        
        editPorfileView.arrowLeftButton.addTarget(self, action: #selector(arrowLeftButtonTapped), for: .touchUpInside)

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: editPorfileView.arrowLeftButton)
        
        NSLayoutConstraint.activate([
            editPorfileView.topAnchor.constraint(equalTo: view.topAnchor),
            editPorfileView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            editPorfileView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            editPorfileView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        editPorfileView.setupUI()
    }
    
    @objc private func arrowLeftButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}
