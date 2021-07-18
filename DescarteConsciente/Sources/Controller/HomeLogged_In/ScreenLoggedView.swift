//
//  ScreenLoggedView.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 18/07/21.
//

import UIKit

class ScreenLoggedView: UIView {
    
    var onLoggoff: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView() {
        self.backgroundColor = .white
        setlabelNickname()
        setButtonLoggoff()
    }
    //MARK: Label NickName
    let nick: String = UserDefaults.standard.value(forKey: "nickname") as! String
    lazy var labelNickname = {LabelComponent(("Seja bem vindo, \(nick)"), .black, fontText: .fontSubtitleAvenir, .center)}()
    func setlabelNickname() {
        addSubview(labelNickname)
        NSLayoutConstraint.activate([
            labelNickname.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 100),
            labelNickname.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    lazy var buttonLoggoff = {ButtonComponent(title: "Sair da conta", background: .black, colorTitle: .white, fontText: .fontSubtitleAvenir, radius: 10)}()
    func setButtonLoggoff() {
        addSubview(buttonLoggoff)
        buttonLoggoff.addTarget(self, action: #selector(buttonLoggoffAction), for: .touchUpInside)
        NSLayoutConstraint.activate([
            buttonLoggoff.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            buttonLoggoff.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30),
            buttonLoggoff.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            buttonLoggoff.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func buttonLoggoffAction(sender: UIButton!) {
        print("button Loggoff")
        onLoggoff?()
    }
    
}

