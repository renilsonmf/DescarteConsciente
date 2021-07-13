//
//  LoginView.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

class LoginView: UIView {
    
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
        setImageIconRecycle()
        setLabelEmail()
        setTextFieldEmail()
    }
    
    //MARK: Icon
    lazy var imageIconRecycle: UIImageView = {ImageComponent(setImage: .iconRecycle)}()
    private func setImageIconRecycle() {
                
        addSubview(imageIconRecycle)
        NSLayoutConstraint.activate([
            imageIconRecycle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 70),
            imageIconRecycle.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    //MARK: Label Email
    lazy var labelEmail: UILabel = {LabelComponent("Email", .colorMainGreen)}()
    private func setLabelEmail() {
        addSubview(labelEmail)
        NSLayoutConstraint.activate([
            labelEmail.topAnchor.constraint(equalTo: self.imageIconRecycle.bottomAnchor, constant: 50),
            labelEmail.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            labelEmail.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    //MARK: TextField
    
    lazy var textFieldEmail: UITextField = {
        var bottomLine = CALayer()
        let myTextField = UITextField()
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        myTextField.placeholder = "ex@example.com"
        myTextField.backgroundColor = .white
        myTextField.setPadding()
        myTextField.setBottomBorder()
        return myTextField
    }()
    private func setTextFieldEmail() {
        addSubview(textFieldEmail)
        NSLayoutConstraint.activate([
            textFieldEmail.topAnchor.constraint(equalTo: self.labelEmail.bottomAnchor, constant: 10),
            textFieldEmail.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            textFieldEmail.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20)
        ])
    }
}
