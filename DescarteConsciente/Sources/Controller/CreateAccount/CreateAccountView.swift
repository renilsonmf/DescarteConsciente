//
//  CreateAccountView.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

class CreateAccountView: UIView {
    
    var onCreateAccount: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView() {
        self.backgroundColor = .white
        setImageIconRecycle()
        setLabelName()
        setTextFieldName()
        setLabelEmail()
        setTextFieldEmail()
        setLabelPassword()
        setTextFieldPassword()
        setButtonCreateAccount()
    
    }

    //MARK: Icon Recycle
    lazy var imageIconRecycle: UIImageView = {ImageComponent(setImage: .iconRecycle)}()
    private func setImageIconRecycle() {
                
        addSubview(imageIconRecycle)
        NSLayoutConstraint.activate([
            imageIconRecycle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 70),
            imageIconRecycle.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    //MARK: Label nome
    lazy var labelName: UILabel = {LabelComponent("Nome", .colorMainGreen)}()
    private func setLabelName() {
        addSubview(labelName)
        NSLayoutConstraint.activate([
            labelName.topAnchor.constraint(equalTo: imageIconRecycle.bottomAnchor, constant: 40),
            labelName.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
        ])
    }
    
    //MARK: TextField nome
    lazy var textFieldName: UITextField = {
        var bottomLine = CALayer()
        let myTextField = UITextField()
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        myTextField.placeholder = "ex: João"
        myTextField.backgroundColor = .white
        myTextField.setBottomBorder()
        return myTextField
    }()
    private func setTextFieldName() {
        addSubview(textFieldName)
        NSLayoutConstraint.activate([
            textFieldName.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 1),
            textFieldName.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            textFieldName.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            textFieldName.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    //MARK: Label Email
    lazy var labelEmail: UILabel = {LabelComponent("Email", .colorMainGreen)}()
    private func setLabelEmail() {
        addSubview(labelEmail)
        NSLayoutConstraint.activate([
            labelEmail.topAnchor.constraint(equalTo: textFieldName.bottomAnchor, constant: 20),
            labelEmail.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
        ])
    }
    
    //MARK: TextField email
    lazy var textFieldEmail: UITextField = {
        var bottomLine = CALayer()
        let myTextField = UITextField()
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        myTextField.placeholder = "Digite seu Email"
        myTextField.backgroundColor = .white
        myTextField.setBottomBorder()
        return myTextField
    }()
    private func setTextFieldEmail() {
        addSubview(textFieldEmail)
        NSLayoutConstraint.activate([
            textFieldEmail.topAnchor.constraint(equalTo: labelEmail.bottomAnchor, constant: 1),
            textFieldEmail.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            textFieldEmail.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            textFieldEmail.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    //MARK: Label Password
    lazy var labelPassword: UILabel = {LabelComponent("Senha", .colorMainGreen)}()
    private func setLabelPassword() {
        addSubview(labelPassword)
        NSLayoutConstraint.activate([
            labelPassword.topAnchor.constraint(equalTo: textFieldEmail.bottomAnchor, constant: 20),
            labelPassword.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
        ])
    }
    
    //MARK: TextField senha
    lazy var textFieldPassword: UITextField = {
        var bottomLine = CALayer()
        let myTextField = UITextField()
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        myTextField.placeholder = "Digite sua Senha"
        myTextField.isSecureTextEntry = true
        myTextField.backgroundColor = .white
        myTextField.setBottomBorder()
        return myTextField
    }()
    private func setTextFieldPassword() {
        addSubview(textFieldPassword)
        NSLayoutConstraint.activate([
            textFieldPassword.topAnchor.constraint(equalTo: labelPassword.bottomAnchor, constant: 1),
            textFieldPassword.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            textFieldPassword.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            textFieldPassword.heightAnchor.constraint(equalToConstant: 40)
        ])
    }

    //MARK: Button Login
    lazy var buttonCreateAccount: UIButton = {ButtonComponent(title: "CRIAR CONTA", background: .colorMainGreen, colorTitle: .white, fontText: .fontSubtitleAvenir, radius: 20)}()
    private func setButtonCreateAccount() {
        addSubview(buttonCreateAccount)
        buttonCreateAccount.addTarget(self, action: #selector(actionButtonCreateAccount), for: .touchUpInside)
        NSLayoutConstraint.activate([
            buttonCreateAccount.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 20),
            buttonCreateAccount.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            buttonCreateAccount.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            buttonCreateAccount.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc
    func actionButtonCreateAccount(sender: UIButton!) {
        onCreateAccount?()
    }

}
