//
//  ViewController.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 08/07/21.
//

import UIKit

class LoginViewController: UIViewController {

    var onAccessType: ((_ accessType: AccessType) -> Void)?
    let alertController = AlertController()
    let loginView = LoginView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        navigationTitleConfig(title: "Voltar")
        getActionButtons()
    }
    
    override func loadView() {
        self.view = loginView
    }
    private func getActionButtons() {
        loginView.onAccessType = { options in
            switch options {
            case .AccessForgoutPassword:
                let alert = self.alertController.alertView(view: self)
                self.present(alert, animated: true, completion: nil)
            case .AccessLogin:
                print("Sera direcionado para a area logada")
            }
        }
    }
}

