//
//  LoginView.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

class LoginView: UIView {
    
    var onAccessType: ((_ accessType: AccessType) -> Void)?
    let scrollView = UIScrollView(frame: .zero)
    let contentview = UIView(frame: .zero)
    
    //MARK: Inicializadores
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func createView() {
        self.backgroundColor = .white
        configContentView()
        configScroll()
        setImageIconRecycle()
        setLabelEmail()
        setTextFieldEmail()
        setLabelPassword()
        setTextFieldPassword()
        setButtonForgotPassword()
        setButtonLogin()
        setBottomScroll()
    }
    
    //MARK: Content View
    private func configContentView() {
        scrollView.addSubview(contentview)
        contentview.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentview.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentview.topAnchor.constraint(equalTo: scrollView.topAnchor),
        ])
        
    }
    //MARK: Scroll View
    private func configScroll() {
        self.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.widthAnchor.constraint(equalTo: self.widthAnchor),
            scrollView.topAnchor.constraint(equalTo: self.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    func setBottomScroll() { //Esse procedimento nao funcionará se o button (que eh o ultimo elemento
        // e eh o referenciado) nao estiver adicionado e posicionado, por isso ele esta aqui
        scrollView.bottomAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 300).isActive = true
    }
    
    //MARK: Icon
    lazy var imageIconRecycle: UIImageView = {ImageComponent(setImage: .iconRecycle)}()
    private func setImageIconRecycle() {
                
        contentview.addSubview(imageIconRecycle)
        NSLayoutConstraint.activate([
            imageIconRecycle.topAnchor.constraint(equalTo: contentview.safeAreaLayoutGuide.topAnchor, constant: 70),
            imageIconRecycle.centerXAnchor.constraint(equalTo: contentview.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    //MARK: Label Email
    lazy var labelEmail: UILabel = {LabelComponent("Email", .colorMainGreen)}()
    private func setLabelEmail() {
        contentview.addSubview(labelEmail)
        NSLayoutConstraint.activate([
            labelEmail.topAnchor.constraint(equalTo: self.imageIconRecycle.bottomAnchor, constant: 40),
            labelEmail.leftAnchor.constraint(equalTo: contentview.leftAnchor, constant: 30),
        ])
    }
    
    //MARK: TextField email
    lazy var textFieldEmail: UITextField = {
        var bottomLine = CALayer()
        let myTextField = UITextField()
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        myTextField.placeholder = "ex@example.com"
        myTextField.backgroundColor = .white
        myTextField.setBottomBorder()
        return myTextField
    }()
    private func setTextFieldEmail() {
        contentview.addSubview(textFieldEmail)
        NSLayoutConstraint.activate([
            textFieldEmail.topAnchor.constraint(equalTo: labelEmail.bottomAnchor, constant: 1),
            textFieldEmail.leftAnchor.constraint(equalTo: contentview.leftAnchor, constant: 30),
            textFieldEmail.rightAnchor.constraint(equalTo: contentview.rightAnchor, constant: -30),
            textFieldEmail.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    //MARK: Label Password
    lazy var labelPassword: UILabel = {LabelComponent("Senha", .colorMainGreen)}()
    private func setLabelPassword() {
        contentview.addSubview(labelPassword)
        NSLayoutConstraint.activate([
            labelPassword.topAnchor.constraint(equalTo: self.textFieldEmail.bottomAnchor, constant: 20),
            labelPassword.leftAnchor.constraint(equalTo: contentview.leftAnchor, constant: 30),
        ])
    }
    
    //MARK: TextField senha
    lazy var textFieldPassword: UITextField = {
        var bottomLine = CALayer()
        let myTextField = UITextField()
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        myTextField.placeholder = "********"
        myTextField.backgroundColor = .white
        myTextField.setBottomBorder()
        return myTextField
    }()
    private func setTextFieldPassword() {
        contentview.addSubview(textFieldPassword)
        NSLayoutConstraint.activate([
            textFieldPassword.topAnchor.constraint(equalTo: labelPassword.bottomAnchor, constant: 1),
            textFieldPassword.leftAnchor.constraint(equalTo: contentview.leftAnchor, constant: 30),
            textFieldPassword.rightAnchor.constraint(equalTo: contentview.rightAnchor, constant: -30),
            textFieldPassword.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    //MARK: Button Forgot Password
    lazy var buttonForgotPassword: UIButton = {ButtonComponent(title: "Esqueci minha senha", colorTitle: .colorMainGreen, fontText: .fontForgotPassword)}()
    private func setButtonForgotPassword() {
        contentview.addSubview(buttonForgotPassword)
        buttonForgotPassword.addTarget(self, action: #selector(actionButtonForgotPassword), for: .touchUpInside)
        NSLayoutConstraint.activate([
            buttonForgotPassword.topAnchor.constraint(equalTo: self.textFieldPassword.bottomAnchor, constant: 20),
            buttonForgotPassword.rightAnchor.constraint(equalTo: contentview.rightAnchor, constant: -30),
        ])
    }
    
    @objc
    func actionButtonForgotPassword(sender: UIButton!) {
        onAccessType?(.AccessForgoutPassword)
    }
    
    //MARK: Button Login
    lazy var buttonLogin: UIButton = {ButtonComponent(title: "LOGIN", background: .colorMainGreen, colorTitle: .white, fontText: .fontSubtitleAvenir, radius: 20)}()
    private func setButtonLogin() {
        contentview.addSubview(buttonLogin)
        buttonLogin.addTarget(self, action: #selector(actionButtonLogin), for: .touchUpInside)
        NSLayoutConstraint.activate([
            buttonLogin.topAnchor.constraint(equalTo: self.buttonForgotPassword.bottomAnchor, constant: 20),
            buttonLogin.rightAnchor.constraint(equalTo: contentview.rightAnchor, constant: -30),
            buttonLogin.leftAnchor.constraint(equalTo: contentview.leftAnchor, constant: 30),
            buttonLogin.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc
    func actionButtonLogin(sender: UIButton!) {
        onAccessType?(.AccessLogin)
    }
    
    
}
