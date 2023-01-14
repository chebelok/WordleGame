//
//  KeyCell.swift
//  WorldleGame
//
//  Created by Иван Лотохин on 14.01.2023.
//

import UIKit

class KeyCell: UICollectionViewCell {
    static let identifier = "KeyCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray3
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
