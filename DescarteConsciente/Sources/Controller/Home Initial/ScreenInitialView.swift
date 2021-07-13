//
//  ScreenInitialView.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

class ScreenInitialView: UIView {
    
    var onLoginType: ((_ setLogin: LoginType) -> Void)?
    
    //MARK: Initiator methods

    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createView(){
        self.backgroundColor = .colorMainGreen
        setImageIconRecycle()
        setLabelTop()
        setButtonCreateAccount()
        setButtonLogin()
    }
    
    //MARK: Icon
    lazy var imageIconRecycle: UIImageView = {ImageComponent(setImage: .iconRecycle)}()
    func setImageIconRecycle() {
                
        addSubview(imageIconRecycle)
        NSLayoutConstraint.activate([
            imageIconRecycle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 140),
            imageIconRecycle.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    //MARK: Label title
    lazy var labelTop: UILabel = {LabelComponent("Descarte Consciente", .white, fontText: .fontTitleAvenir, .center)}()
    func setLabelTop() {
        addSubview(labelTop)
        NSLayoutConstraint.activate([
            labelTop.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 230),
            labelTop.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
    //Meio do device multiplicado por 0.5
    let screenHeigth = UIScreen.main.bounds.height * 0.5
    
    //MARK: Button Create Account
    lazy var buttonCreateAccount: UIButton = {ButtonComponent(title: "CRIAR CONTA", colorTitle: .white, radius: 20, colorBorder: .white, borderWidth: 1)}()
    func setButtonCreateAccount() {
        buttonCreateAccount.addTarget(self, action: #selector(actionButtonCreateAccount), for: .touchUpInside)
        addSubview(buttonCreateAccount)
        NSLayoutConstraint.activate([
            buttonCreateAccount.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: screenHeigth),
            buttonCreateAccount.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            buttonCreateAccount.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            buttonCreateAccount.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    @objc
    func actionButtonCreateAccount(sender: UIButton!) {
        onLoginType?(LoginType.CreateAccount)
    }
    
    //MARK: Button Login
    lazy var buttonLogin: UIButton = {ButtonComponent(title: "LOGIN", background: .white, colorTitle: .colorMainGreen, radius: 20)}()
    func setButtonLogin() {
        buttonLogin.addTarget(self, action: #selector(actionbuttonLogin), for: .touchUpInside)
        addSubview(buttonLogin)
        NSLayoutConstraint.activate([
            buttonLogin.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: screenHeigth + 70),
            buttonLogin.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            buttonLogin.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            buttonLogin.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    @objc
    func actionbuttonLogin(sender: UIButton!) {
        onLoginType?(LoginType.Login)
    }
}
