//
//  ButtonComponent.swift
//  financialGoal
//
//  Created by Renilson Moreira Ferreira on 08/07/21.
//

import UIKit

class ButtonComponent: UIButton {
    
    init(title: String, background: UIColor = .clear, colorTitle: UIColor, fontText: UIFont = .fontSubtitleAvenir, radius: CGFloat = 0, colorBorder: UIColor = .clear, borderWidth: CGFloat = 0) {
        super.init(frame: .zero)
        self.frame = .zero
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = background
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = fontText
        self.setTitleColor(colorTitle, for: .normal)
        self.layer.cornerRadius = radius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = colorBorder.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



