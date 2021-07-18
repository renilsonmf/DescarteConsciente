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
        setActionButtons()
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
        self.view = screenInitialView
    }
    
    private func setActionButtons() {
        screenInitialView.onLoginType = { setLogin in
            self.onLoginType?(setLogin)
        }
    }
    
}
