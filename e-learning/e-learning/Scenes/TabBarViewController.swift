//
//  TabBarViewController.swift
//  e-learning
//
//  Created by Grazi  Berti on 19/09/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupControllers()
    }
    
    private func setupControllers() {
        let homeScream = HomeViewController()
        let favoritesScream = FavoritesViewController()
        
        
        homeScream.navigationItem.largeTitleDisplayMode = .always
        favoritesScream.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: homeScream)
        let nav2 = UINavigationController(rootViewController: favoritesScream)
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Salvos", image: UIImage(systemName: "heart"), tag: 2)
        
        nav1.isNavigationBarHidden = true
        nav2.isNavigationBarHidden = true
        
        nav1.navigationBar.backgroundColor = .purpleColor
        nav2.navigationBar.backgroundColor = .purpleColor
        
        UITabBar.appearance().tintColor = .pinkColor
        
        setViewControllers([nav1, nav2], animated: true)
    }
}
