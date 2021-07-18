//
//  ScreenLoggedCoordinator.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 18/07/21.
//

import UIKit

class ScreenLoggedCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let screenLoggedViewController = ScreenLoggedViewController()
        self.navigationController.pushViewController(screenLoggedViewController, animated: true)
    }
}
