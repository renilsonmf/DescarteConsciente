//
//  CreateAccountViewController.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

class CreateAccountViewController: UIViewController{
    
    let createAccountView = CreateAccountView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Abra sua conta"
        navigationTitleConfig(title: "Voltar")
    }
    
    override func loadView() {
        self.view = createAccountView
    }
    
}
