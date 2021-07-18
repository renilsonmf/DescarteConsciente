//
//  LoginCoordinator.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

class LoginCoordinator: Coordinator {

    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let loginViewController = LoginViewController()
        loginViewController.onLoggedType = { loggedType in
            switch loggedType {
            case .Login:
                let coordinator = ScreenLoggedCoordinator(navigationController: self.navigationController)
                coordinator.start()
            case .OpenAccount:
                break
            }
        }
        self.navigationController.pushViewController(loginViewController, animated: true)
        
        
    }
    
}
