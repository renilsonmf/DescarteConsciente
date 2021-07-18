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
            let name: String = self.createAccountView.textFieldName.text ?? ""
            let email: String = self.createAccountView.textFieldEmail.text ?? ""
            let password: String = self.createAccountView.textFieldPassword.text ?? ""
            self.auth?.createUser(withEmail: email, password: password, completion: { (result, error) in
                if error != nil{
                    self.showDefaultAlert("Atenção", "Falha ao tentar criar a conta")
                }else{
                    self.showDefaultAlert("Parabéns", "Conta criada com sucesso!!")
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
