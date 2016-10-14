//
//  GamesListViewController.swift
//  Project Three: E-Commerce
//
//  Created by K on 10/4/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit


var imageNow: UIImage?
var textNow: String?
var costNow: String?

class GameInfoViewController: UIViewController {
    
    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameImage.image = imageNow
        gameLabel.text = textNow
        
    }
    
    
    
}






