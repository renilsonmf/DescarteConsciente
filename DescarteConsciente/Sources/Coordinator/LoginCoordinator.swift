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
        DispatchQueue.main.async {
            let loginViewController = LoginViewController()
            self.navigationController.pushViewController(loginViewController, animated: true)
        }
        
    }
    
}
