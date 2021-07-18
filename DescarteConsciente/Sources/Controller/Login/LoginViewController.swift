//
//  ViewController.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 08/07/21.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    var onAccessType: ((_ accessType: AccessType) -> Void)?
    var onLoggedType: ((_ loggedType: LoggedType) -> Void)?
    
    let alertController = AlertController()
    let scrollView: UIScrollView = UIScrollView(frame: .zero)
    let loginView = LoginView(frame: .zero)
    
    var auth: Auth?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        navigationTitleConfig(title: "Voltar")
        getActionButtons()
        configScroll()
        self.auth = Auth.auth()
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
                let email = self.loginView.textFieldEmail.text ?? ""
                let password = self.loginView.textFieldPassword.text ?? ""
                self.auth?.signIn(withEmail: email, password: password, completion: { (user, error) in
                    if error != nil {
                        self.showDefaultAlert("Atenção", "Dados invalidos")
                    }else{
                        if user == nil {
                            self.showDefaultAlert("Atenção", "Verifique os campos")
                        }else{
                            self.onLoggedType?(.Login)
                            print("Login Efetuado c sucesso")
                        }
                    }
                })
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

