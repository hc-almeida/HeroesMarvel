//
//  CharacterListViewController.swift
//  HeroesMavel
//
//  Created by Hellen on 18/10/21.
//

import UIKit

protocol CharacterListViewControllerProtocol: AnyObject {

}

class CharacterListViewController: UIViewController {
    
    // MARK: - VIP Properties
     
     var interactor: CharacterListInteractorProtocol!
     
     var router: CharacterListRouterProtocol!
    
    // MARK: - Private Properties
    
    private lazy var characterListView: CharacterListView = {
        return CharacterListView(self)
    }()
    
    // MARK: - Life Cycle
    
    override func loadView() {
        self.view = characterListView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blueDark
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigation()
    }
    
    private func setupNavigation() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationItem.hidesSearchBarWhenScrolling = false
    }

}

extension CharacterListViewController: CharacterListViewDelegate {
    
}

extension CharacterListViewController: CharacterListViewControllerProtocol {
    
    
}
