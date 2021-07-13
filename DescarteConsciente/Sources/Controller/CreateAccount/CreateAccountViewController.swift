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
        view.backgroundColor = .yellow
    }
    
    override func loadView() {
        self.view = createAccountView
    }
    
}
