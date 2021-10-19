//
//  TabBar.swift
//  HeroesMavel
//
//  Created by Hellen on 19/10/21.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBar = UITabBar.appearance()
        tabBar.tintColor = .customRed
        tabBar.barTintColor = .blueDark
        tabBar.isTranslucent = false
        viewControllers = [createCharacterNavigationController(),
                           createFavoritesNavigationController()]
    }
    
    func createCharacterNavigationController() -> UINavigationController {
        let character = CharacterListBuilder.build()
        let image = UIImage(named: "shield")
        character.title = "Character"
        character.tabBarItem = UITabBarItem(title: "Character", image: image, tag: 0)
        
        let navigation = UINavigationController(rootViewController: character)
        setupAppearanceNavigationBar(navigation: navigation)
        
        return navigation
    }
    
    func createFavoritesNavigationController() -> UINavigationController {
        let favoriteVC = FavoriteListViewController()
        favoriteVC.title = "Favorites"
        favoriteVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoriteVC)
    }
        
    private func setupAppearanceNavigationBar(navigation: UINavigationController) {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .blueDark
        appearance.titleTextAttributes = [.foregroundColor: UIColor.customRed]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.customRed]
        
        navigation.navigationBar.tintColor = .white
        navigation.navigationBar.standardAppearance = appearance
        navigation.navigationBar.compactAppearance = appearance
        navigation.navigationBar.scrollEdgeAppearance = appearance
    }
}
