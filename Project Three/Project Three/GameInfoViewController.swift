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

class GameInfoViewController: UIViewController {
    
    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet weak var gameImage: UIImageView!
    
    var game: GameInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        guard game != nil else {
//            print("Game not properly set")
//            self.dismiss()
//            return
//        }
        
        //setGameInfo()
        gameImage.image = imageNow
        
    }

//    private func dismiss() {
//        self.navigationController?.popViewController(animated: true)
//    }
    
    func setGameInfo() {
        
        //gameTitle.text = game.name
        //gameImage.image = game.image
        
    }
    
    
    
}






