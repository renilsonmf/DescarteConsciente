//
//  ScreenLoggedCoordinator.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 18/07/21.
//

import UIKit
import Firebase

class ScreenLoggedCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let screenLoggedViewController = ScreenLoggedViewController()
        screenLoggedViewController.onLoggoff = {
            let startInitial = ScreenInitialCoordinator(navigationController: self.navigationController)
            startInitial.start()
            
        }
        self.navigationController.pushViewController(screenLoggedViewController, animated: true)
    }
}
