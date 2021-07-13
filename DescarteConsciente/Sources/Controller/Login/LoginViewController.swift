//
//  ViewController.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 08/07/21.
//

import UIKit

class LoginViewController: UIViewController {

    let loginView = LoginView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        navigationTitleConfig(title: "Voltar")
    }
    
    override func loadView() {
        self.view = loginView
    }
    
}

