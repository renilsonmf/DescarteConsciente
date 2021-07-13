//
//  ScreenInitialCoordinator.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

class ScreenInitialCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let screenInitialViewController = ScreenInitialViewController()
        
        screenInitialViewController.onLoginType = { setLogin in
            switch setLogin {
            case .CreateAccount:
                <#code#>
            case .Login:
                <#code#>
            }
        }
        
        self.navigationController.pushViewController(screenInitialViewController, animated: true)
    }
}
