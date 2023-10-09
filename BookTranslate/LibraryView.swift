//
//  HomeView.swift
//  BookTranslate
//
//  Created by Hovo Ohanyan on 20.08.23.
//

import UIKit

final class LibraryView: UIView {
    //MARK: Back ground view definition
    let backgraoundView = UIView()

    //MARK: Search bar definition
    
    private let searchBar = UISearchBar()
    
    
    //MARK: Filter button definitions
    
    private let underlinesButton = UIButton(titleText: "UNDERLINES", titleColor: .white,
                                            backgroundColor: .underlinesColor,
                                            leftSideImage: UIImage(named: "Vector"),
                                            isFilterButton: true)
    
    private let notesButton = UIButton(titleText: "NOTES", titleColor: .white,
                                       backgroundColor: .notesColor,
                                       leftSideImage: UIImage(named: "Vector2"),
                                       isFilterButton: true)
    
    private let highlightsButton = UIButton(titleText: "HIGHLIGHTS", titleColor: .white,
                                            backgroundColor: .highlightsColor,
                                            leftSideImage: UIImage(named: "Vector3"),
                                            isFilterButton: true)
    
    private let sportButton = UIButton(titleText: "SPORT", titleColor: .white,
                                       backgroundColor: .highlightsColor,
                                       leftSideImage: UIImage(named: "Vector4"),
                                       isFilterButton: true)
    
    private let foodButton = UIButton(titleText: "FOOD", titleColor: .white,
                                      backgroundColor: .foodColor,
                                      leftSideImage: UIImage(named: "Vector7"),
                                      isFilterButton: true)
    
    private let mindPowerButton = UIButton(titleText: "MIND POWER", titleColor: .white,
                                           backgroundColor: .underlinesColor,
                                           isFilterButton: true)
    
    private let artButton = UIButton(titleText: "ART", titleColor: .white,
                                     backgroundColor: .artColor,
                                     leftSideImage: UIImage(named: "Vector7"),
                                     isFilterButton: true)
    
    
    //MARK: TabBar deifinition
    
    private let tabBar = UITabBarController()
    
    //MARK: Setup UI funtion
    func setupUI() {
        backgraoundView.backgroundColor = .customBlue
        backgraoundView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(backgraoundView)
        
        //MARK: Upper side stack view
        
        let upperStackView = UIStackView(arragedSubviews: [underlinesButton, notesButton, highlightsButton],
                                         axis: .horizontal, spacing: 10)
        
        upperStackView.translatesAutoresizingMaskIntoConstraints = false
        upperStackView.distribution = .fillProportionally
        self.addSubview(upperStackView)
        
        let lowerStackView = UIStackView(arragedSubviews: [sportButton, foodButton, mindPowerButton, artButton],
                                         axis: .horizontal, spacing: 10)
        
        lowerStackView.translatesAutoresizingMaskIntoConstraints = false
        lowerStackView.distribution = .fillProportionally
        self.addSubview(lowerStackView)
    
        //MARK: Search bar auto layout
        
        searchBarConfiguration()
        
        NSLayoutConstraint.activate([
            backgraoundView.topAnchor.constraint(equalTo: self.topAnchor),
            backgraoundView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            backgraoundView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            backgraoundView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: self.topAnchor, constant: 59),
            searchBar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 26),
            searchBar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            searchBar.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        //MARK: Upper stack view auto layout
        
        NSLayoutConstraint.activate([
            upperStackView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 10),
            upperStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 38),
            upperStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -34),
            upperStackView.heightAnchor.constraint(equalToConstant: 29)
        ])
        
        NSLayoutConstraint.activate([
            lowerStackView.topAnchor.constraint(equalTo: upperStackView.bottomAnchor, constant: 8),
            lowerStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 26),
            lowerStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            lowerStackView.heightAnchor.constraint(equalToConstant: 29)
        ])	
    }
    
    //MARK: searchBar configuration
    
    private func searchBarConfiguration() {
        searchBar.placeholder = "Search..."
        searchBar.showsCancelButton = false
        searchBar.delegate = self
        searchBar.barTintColor = .customBlue
        searchBar.setImage(UIImage(named: "Search"), for: .search, state: .normal)
        searchBar.searchBarStyle = .minimal
        searchBar.searchTextField.borderStyle = .none
        searchBar.searchTextField.font = UIFont(name: "SFPro-Thin", size: 20.33)
        searchBar.searchTextField.textColor = .white
        
        self.addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
    }
}

extension LibraryView: UISearchBarDelegate {
    
}
