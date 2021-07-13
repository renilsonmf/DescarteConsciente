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
            self.setOptions(setLogin: setLogin)
        }
        
        self.navigationController.pushViewController(screenInitialViewController, animated: true)
    }
    
    private func setOptions(setLogin: LoginType) {
        switch setLogin {
        case .CreateAccount:
            let coordinator = CreateAccountCoordinator(navigationController: self.navigationController)
            coordinator.start()
        case .Login:
            let coordinator = LoginCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
    }
}
