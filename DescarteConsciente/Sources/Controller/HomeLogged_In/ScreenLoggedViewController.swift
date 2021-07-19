//
//  ScreenLoggedViewController.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 18/07/21.
//

import UIKit
import Firebase

class ScreenLoggedViewController: UIViewController {
    
    let screenLoggedView = ScreenLoggedView(frame: .zero)
    var onLoggoff: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.removeActivity()
        setActionButtonLoggoff()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func loadView() {
        self.view = screenLoggedView
    }
    
    func setActionButtonLoggoff() {
        screenLoggedView.onLoggoff = {
            self.onLoggoff?()
            do {
                try Auth.auth().signOut()
            } catch let logoutError {
                print(logoutError)
            }
            
        }
    }
}


