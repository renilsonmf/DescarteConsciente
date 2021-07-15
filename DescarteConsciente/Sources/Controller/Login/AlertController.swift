//
//  AlertController.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 15/07/21.
//

import UIKit

public class AlertController: UIAlertController {
    
    func alertView(view: UIViewController) -> UIAlertController {
        let alert = UIAlertController(title: "Esqueci a senha", message: "Insira seu email para enviarmos um link de redefinição de senha.", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.keyboardType = .emailAddress
            textField.placeholder = "ex@example.com"
        }
        let cancel = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alert.addAction(cancel)
        let ok = UIAlertAction(title: "Ok", style: .default) { (action) in
            //guard let email = alert.textFields?.first?.text else {return}
        }
        alert.addAction(ok)
        return alert
    }
    
    
}
