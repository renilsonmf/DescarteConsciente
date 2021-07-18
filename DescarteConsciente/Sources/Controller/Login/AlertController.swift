//
//  AlertController.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 15/07/21.
//

import UIKit
import Firebase

public class AlertController: UIAlertController {
    
    var auth: Auth?
    
    func alertView(view: UIViewController) -> UIAlertController {
        self.auth = Auth.auth()
        let alert = UIAlertController(title: "Esqueci a senha", message: "Insira seu email para enviarmos um link de redefinição de senha.", preferredStyle: .alert)
        alert.addTextField { (textField) in
            textField.keyboardType = .emailAddress
            textField.placeholder = "Digite seu Email"
        }
        let cancel = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alert.addAction(cancel)
        let ok = UIAlertAction(title: "Ok", style: .default) { (action) in
            self.showActivity()
            guard let email = alert.textFields?.first?.text?.lowercased() else { return }
            self.auth?.sendPasswordReset(withEmail: email, completion: { (error) in
                if error == nil{
                    
                    print("enviado com sucesso")
                    self.showAlertSuccess(view: view, "Parabéns", "Email enviado com sucesso")
                    return
                }
                print("Credenciais invalidas")
                self.showAlertError(view: view, "Atenção", "Verifique os dados informados")
                
            })
            
        }
        alert.addAction(ok)
        return alert
    }
    
    func showAlertError(view: UIViewController, _ title: String, _ message: String) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default) { (action) in
                let alert = self.alertView(view: view)
                view.present(alert, animated: true, completion: nil)
            }
            alert.addAction(ok)
            view.present(alert, animated: true, completion: nil)
            self.removeActivity()
        }
    }
    
    func showAlertSuccess(view: UIViewController, _ title: String, _ message: String) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(ok)
            view.present(alert, animated: true, completion: nil)
            self.removeActivity()
        }
    }
   
}
