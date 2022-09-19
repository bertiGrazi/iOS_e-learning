//
//  ViewController.swift
//  e-learning
//
//  Created by Grazi  Berti on 19/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK: - Variable
    
    //MARK: - View
    
    fileprivate let scrollView: UIScrollView = {
        let scrowView = UIScrollView()
        scrowView.backgroundColor = .purpleLightColor
        scrowView.translatesAutoresizingMaskIntoConstraints = false
        return scrowView
    }()
    
    fileprivate let logoAndTurnOffView: UIView = {
        let view = UIView()
        view.backgroundColor = .purpleColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "e.learning")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let turnOffButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "rectangle.portrait.and.arrow.right"), for: .normal)
        button.tintColor = .pinkColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    fileprivate let searchBarView: UIView = {
        let view = UIView()
        view.backgroundColor = .purpleColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let searchBar: UISearchTextField = {
        let searchBar = UISearchTextField()
        searchBar.placeholder = "Busque um curso"
        searchBar.backgroundColor = .white
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    fileprivate let categoryLabelAndCoursesCountView: UIView = {
        let view = UIView()
        view.backgroundColor = .purpleLightColor
        view.layer.cornerRadius = 8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Categorias"
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        label.tintColor = .purpleDarkColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let coursesCountLabel: UILabel = {
        let label = UILabel()
        label.text = "0 cursos"
        label.font = UIFont(name: "Roboto", size: 12)
        label.tintColor = .purpleSuperLightColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupView()
        setupConstrains()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    
    fileprivate func setupView() {
        view.addSubview(scrollView)
        scrollView.addSubview(logoAndTurnOffView)
        logoAndTurnOffView.addSubview(logoImageView)
        logoAndTurnOffView.addSubview(turnOffButton)
        scrollView.addSubview(searchBarView)
        searchBarView.addSubview(searchBar)
        scrollView.addSubview(categoryLabelAndCoursesCountView)
        categoryLabelAndCoursesCountView.addSubview(categoryLabel)
        categoryLabelAndCoursesCountView.addSubview(coursesCountLabel)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            logoAndTurnOffView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            logoAndTurnOffView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            logoAndTurnOffView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            logoAndTurnOffView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            logoAndTurnOffView.heightAnchor.constraint(equalToConstant: 50),
            
            logoImageView.topAnchor.constraint(equalTo: logoAndTurnOffView.topAnchor, constant: 12),
            logoImageView.leadingAnchor.constraint(equalTo: logoAndTurnOffView.leadingAnchor, constant: 20),
            
            turnOffButton.topAnchor.constraint(equalTo: logoAndTurnOffView.topAnchor, constant: 12),
            turnOffButton.trailingAnchor.constraint(equalTo: logoAndTurnOffView.trailingAnchor, constant: -20),
            turnOffButton.heightAnchor.constraint(equalToConstant: 24),
            
            searchBarView.topAnchor.constraint(equalTo: logoAndTurnOffView.bottomAnchor, constant: 0),
            searchBarView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            searchBarView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            searchBarView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            searchBarView.heightAnchor.constraint(equalToConstant: 120),
            
            searchBar.topAnchor.constraint(equalTo: searchBarView.topAnchor, constant: 20),
            searchBar.leadingAnchor.constraint(equalTo: searchBarView.leadingAnchor, constant: 20),
            searchBar.trailingAnchor.constraint(equalTo: searchBarView.trailingAnchor, constant: -20),
            searchBar.heightAnchor.constraint(equalToConstant: 50),
            
            categoryLabelAndCoursesCountView.topAnchor.constraint(equalTo: searchBarView.bottomAnchor, constant: -10),
            categoryLabelAndCoursesCountView.leadingAnchor.constraint(equalTo: searchBarView.leadingAnchor, constant: 0),
            categoryLabelAndCoursesCountView.trailingAnchor.constraint(equalTo: searchBarView.trailingAnchor, constant: 0),
            categoryLabelAndCoursesCountView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            categoryLabelAndCoursesCountView.heightAnchor.constraint(equalToConstant: 120),
            
            categoryLabel.topAnchor.constraint(equalTo: categoryLabelAndCoursesCountView.topAnchor, constant: 20),
            categoryLabel.leadingAnchor.constraint(equalTo: categoryLabelAndCoursesCountView.leadingAnchor, constant: 20),
            
            coursesCountLabel.topAnchor.constraint(equalTo: categoryLabelAndCoursesCountView.topAnchor, constant: 24),
            coursesCountLabel.trailingAnchor.constraint(equalTo: categoryLabelAndCoursesCountView.trailingAnchor, constant: -20),
        ])
    }
}

