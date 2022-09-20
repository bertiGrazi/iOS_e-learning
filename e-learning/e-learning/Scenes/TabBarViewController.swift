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
        
        UIApplication.shared.statusBarUIView?.backgroundColor = .purpleColor
        view.backgroundColor = .white
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
        nav1.preferredStatusBarStyle
        
        UITabBar.appearance().tintColor = .pinkColor
        
        setViewControllers([nav1, nav2], animated: true)
    }
}

extension UIApplication {
    var statusBarUIView: UIView? {
        
        if #available(iOS 13.0, *) {
            let tag = 3848245
            
            let keyWindow = UIApplication.shared.connectedScenes
                .map({$0 as? UIWindowScene})
                .compactMap({$0})
                .first?.windows.first
            
            if let statusBar = keyWindow?.viewWithTag(tag) {
                return statusBar
            } else {
                let height = keyWindow?.windowScene?.statusBarManager?.statusBarFrame ?? .zero
                let statusBarView = UIView(frame: height)
                statusBarView.tag = tag
                statusBarView.layer.zPosition = 999999
                
                keyWindow?.addSubview(statusBarView)
                return statusBarView
            }
            
        } else {
            
            if responds(to: Selector(("statusBar"))) {
                return value(forKey: "statusBar") as? UIView
            }
        }
        return nil
    }
}
