//
//  LibraryCollectionViewDataSource.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 27.08.23.
//

import Foundation
import UIKit

extension LibraryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCell", for: indexPath) as! BookCell
        
        cell.configuration(image: UIImage(named: "BookImage")!, bookName: "Things Fall Apart by Chinua Achebe")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let nextVC = BookViewController()
        
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true)
    }
}
