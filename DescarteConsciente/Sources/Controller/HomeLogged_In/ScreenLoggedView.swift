//
//  ScreenLoggedView.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 18/07/21.
//

import UIKit

class ScreenLoggedView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView() {
        self.backgroundColor = .lightGray
    }
}

