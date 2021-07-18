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
        screenLoggedViewController.onLoggoff = {
            let startInitial = ScreenInitialCoordinator(navigationController: self.navigationController)
            startInitial.start()
        }
        self.navigationController.pushViewController(screenLoggedViewController, animated: true)
    }
}


//let profileScreen = ProfileViewController(dataUser: UserData(nick: nickname, user: username))
//profileScreen.onLogoff = {
//    CrudUserDefaults().delete()
//    KeychainService.deleteCredentials()
//    self.navigationController.viewControllers.removeAll()
//    let startScreen = StartCoordinator(navigationController: self.navigationController)
//    startScreen.start()

