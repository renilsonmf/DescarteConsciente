//
//  CreateAccountViewController.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit
import Firebase

class CreateAccountViewController: UIViewController{
    
    var onCreateAccount: (() -> Void)?
    let createAccountView = CreateAccountView(frame: .zero)
    let scrollView: UIScrollView = UIScrollView(frame: .zero)
    var onLoggedType: ((_ loggedType: LoggedType) -> Void)?

    
    var auth: Auth?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Abra sua conta"
        navigationTitleConfig(title: "Voltar")
        configScroll()
        getActionButtonCreateAccount()
        self.auth = Auth.auth()
    }
    
    override func loadView() {
        self.view = scrollView
        scrollView.addSubview(createAccountView)
    }
    
    private func getActionButtonCreateAccount() {
        createAccountView.onCreateAccount = {
            
            guard let name = self.createAccountView.textFieldName.text  else {return}
            guard let email = self.createAccountView.textFieldEmail.text else {return}
            guard let password = self.createAccountView.textFieldPassword.text else {return}
            
            UserDefaults.standard.set(name, forKey: "nickname")
            
            self.auth?.createUser(withEmail: email, password: password, completion: { (result, error) in
                if error != nil{
                    self.showDefaultAlert("Atenção", "Falha ao tentar criar a conta")
                }else{
                    self.onLoggedType?(.OpenAccount)
                }
            })
        }
    }
    
    private func configScroll() {
        scrollView.backgroundColor = .white
        scrollView.addSubview(createAccountView)
        createAccountView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createAccountView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor),
            createAccountView.topAnchor.constraint(equalTo: self.scrollView.topAnchor),
            createAccountView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor),
            createAccountView.bottomAnchor.constraint(equalTo: createAccountView.buttonCreateAccount.bottomAnchor, constant: 300)
        ])
        self.view = scrollView
    }
}
