//
//  UIViewController+.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

extension UIViewController {
    func navigationTitleConfig(title: String) {
        self.navigationController?.navigationBar.topItem?.backButtonTitle = title
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.barTintColor = .colorMainGreen
    }
}
