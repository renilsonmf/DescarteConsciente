//
//  LabelComponent.swift
//  financialGoal
//
//  Created by Jonattan Moises Sousa on 07/07/21.
//

import UIKit

class LabelComponent: UILabel {
    
    init(_ title: String = String.empty, _ fontColor: UIColor = .white, fontText: UIFont = .fontSubtitleAvenir, _ textAlign: NSTextAlignment = .left, _ frameL: CGRect = .zero) {
        super.init(frame: frameL)
        self.font = fontText
        self.text = title
        self.textAlignment = textAlign
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = fontColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
