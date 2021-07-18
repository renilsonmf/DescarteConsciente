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
    let scrollView: UIScrollView = UIScrollView(frame: .zero)
    let loginView = LoginView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        navigationTitleConfig(title: "Voltar")
        getActionButtons()
        configScroll()
    }
    
    override func loadView() {
        self.view = scrollView
        scrollView.addSubview(loginView)
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
    private func configScroll() {
        scrollView.backgroundColor = .white
        scrollView.addSubview(loginView)
        loginView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor),
            loginView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            loginView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor),
            loginView.bottomAnchor.constraint(equalTo: loginView.buttonLogin.bottomAnchor, constant: 300)
        ])
        self.view = scrollView
    }
}

