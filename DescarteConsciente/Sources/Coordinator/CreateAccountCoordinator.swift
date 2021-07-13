//
//  CreateAccountCoordinator.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

 class CreateAccountCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
     func start() {
        let createAccountViewController = CreateAccountViewController()
        self.navigationController.pushViewController(createAccountViewController, animated: true)
    }
    
}
