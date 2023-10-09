//
//  HomeViewController.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 20.08.23.
//

import UIKit

final class LibraryViewController: UIViewController {
    private let libraryView = LibraryView()
    public var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        collectionViewConstraints()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
//        homeView.frame = view.frame
//        homeView.bounds = view.bounds
        libraryView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(libraryView)
        
        NSLayoutConstraint.activate([
            libraryView.topAnchor.constraint(equalTo: view.topAnchor),
            libraryView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            libraryView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            libraryView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        libraryView.setupUI()
    }
    
    private func layoutConstraint() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 336, height: 113)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        return layout
    }
    
    private func collectionViewConstraints() {
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layoutConstraint())
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(BookCell.self, forCellWithReuseIdentifier: "BookCell")
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: libraryView.backgraoundView.bottomAnchor, constant: 13),
            collectionView.leadingAnchor.constraint(equalTo: libraryView.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: libraryView.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: libraryView.bottomAnchor)
        ])
    }
}
