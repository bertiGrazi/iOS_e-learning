//
//  FavoritesCategoryCollectionViewCell.swift
//  e-learning
//
//  Created by Grazi  Berti on 27/09/22.
//

import Foundation
import UIKit

class FavoritesCategoryCollectionViewCell: UICollectionViewCell {
    //MARK: - Variable
    static let identifier = "favoritesCategoryCollectionViewCell"
        
    //MARK: - View
    fileprivate let whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let categoryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .purpleColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let categoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        label.tintColor = .purpleDarkColor
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let numberOfClassesLabel: UILabel = {
        let label = UILabel()
        label.font = label.font.withSize(10)
        label.tintColor = .systemGray6
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let trashButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "trash"), for: .normal)
        button.tintColor = UIColor.gray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        contentView.addSubview(whiteView)
        whiteView.addSubview(categoryImageView)
        whiteView.addSubview(categoryLabel)
        whiteView.addSubview(numberOfClassesLabel)
        whiteView.addSubview(trashButton)
    }
    
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            whiteView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            whiteView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 20),
            whiteView.widthAnchor.constraint(equalToConstant: 156),
            whiteView.heightAnchor.constraint(equalToConstant: 172),
            
            categoryImageView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            categoryImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            categoryImageView.widthAnchor.constraint(equalToConstant: 100),
            categoryImageView.heightAnchor.constraint(equalToConstant: 100),
            
            trashButton.topAnchor.constraint(equalTo: topAnchor, constant: 6),
            trashButton.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -12),
            
            categoryLabel.topAnchor.constraint(equalTo: categoryImageView.bottomAnchor, constant: 8),
            categoryLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 20),
            
            numberOfClassesLabel.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 4),
            numberOfClassesLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 20),
        ])
    }
    
    func configCell(data: CategoryCourses) {
        categoryImageView.image = data.imageCategory
        categoryLabel.text = data.nameCategory
        numberOfClassesLabel.text = data.numberOfClasses
    }
}
