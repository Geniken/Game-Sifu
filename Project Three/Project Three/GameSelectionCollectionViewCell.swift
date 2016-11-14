//
//  GameSelectionCollectionViewCell.swift
//  Game Sifu
//
//  Created by Daniel Kim on 10/13/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit

class GameSelectionCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var gameLabelBorder: UIView!
    
    @IBOutlet weak var gameName: UILabel!
    
    @IBOutlet weak var gameImage: UIImageView!
    
    
    override func awakeFromNib() {
        
        gameLabelBorder.layer.cornerRadius = 15
        gameImage.layer.cornerRadius = 15
        gameName.layer.cornerRadius = 15
    }
    
}
