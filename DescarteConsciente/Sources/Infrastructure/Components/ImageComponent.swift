//
//  ImageComponent.swift
//  DescarteConsciente
//
//  Created by Renilson Moreira Ferreira on 13/07/21.
//

import UIKit

class ImageComponent: UIImageView {
    init(setImage: UIImage) {
        super.init(frame: .zero)
        self.frame = .zero
        self.image = setImage
        self.center.x = center.x
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
