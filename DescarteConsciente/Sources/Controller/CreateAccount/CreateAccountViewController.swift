//
//  CreateAccountViewController.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

class CreateAccountViewController: UIViewController{
    
    let createAccountView = CreateAccountView(frame: .zero)
    
    let scrollView: UIScrollView = UIScrollView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Abra sua conta"
        navigationTitleConfig(title: "Voltar")
        configScroll()
    }
    
    override func loadView() {
        self.view = scrollView
        scrollView.addSubview(createAccountView)
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
