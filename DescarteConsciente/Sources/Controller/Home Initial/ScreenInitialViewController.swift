//
//  ScreenInitial.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

class ScreenInitialViewController: UIViewController {
    
    var onLoginType: ((_ setLogin: LoginType) -> Void)?
    let screenInitialView = ScreenInitialView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = screenInitialView
    }
    
    private func setActionButtons() {
        screenInitialView.onLoginType = { setLogin in
            self.onLoginType?(setLogin)
        }
    }
    
}
