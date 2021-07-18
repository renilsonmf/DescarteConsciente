//
//  ScreenLoggedViewController.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 18/07/21.
//

import UIKit
class ScreenLoggedViewController: UIViewController {
    
    let screenLoggedView = ScreenLoggedView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
}
