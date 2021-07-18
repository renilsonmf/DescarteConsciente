//
//  UIViewController+.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

extension UIViewController {
    
    func navigationTitleConfig(title: String, colorBar: UIColor = .colorMainGreen) {
        self.navigationController?.navigationBar.topItem?.backButtonTitle = title
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.barTintColor = colorBar
    }
    
    func showDefaultAlert(_ title: String, _ message: String) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title.description, message: message.description, preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}
