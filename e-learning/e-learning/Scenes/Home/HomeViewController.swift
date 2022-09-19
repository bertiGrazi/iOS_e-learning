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
        scrowView.backgroundColor = .white
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupView()
        setupConstrains()
    }
    
    fileprivate func setupView() {
        view.addSubview(scrollView)
        scrollView.addSubview(logoAndTurnOffView)
        logoAndTurnOffView.addSubview(logoImageView)
        logoAndTurnOffView.addSubview(turnOffButton)
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
            
        ])
    }
}

