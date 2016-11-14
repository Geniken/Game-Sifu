//
//  GameInformationViewController.swift
//  Game Sifu
//
//  Created by Daniel Kim on 10/13/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit


var imageNow: UIImage?
var textNow: String?
var costNow: String?
var consoleNow: String?
    

class GameInformationViewController: UIViewController {
    
    @IBOutlet weak var imageBorder: UIView!
    
    @IBOutlet weak var gameImage: UIImageView!
    
    @IBOutlet weak var addButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageBorder.layer.cornerRadius = 15
        
        gameImage.layer.cornerRadius = 15
        
        addButton.layer.cornerRadius = 15
        
        specificGameImage.image = imageNow
        specificGameName.text = textNow
        specificPrice.text = costNow
        specificGameConsole.text = consoleNow
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

    @IBOutlet weak var specificGameImage: UIImageView!
    
    @IBOutlet weak var specificGameName: UILabel!
    
    @IBOutlet weak var specificGameConsole: UILabel!
    
    @IBOutlet weak var specificPrice: UILabel!
    
    @IBAction func addToCart(_ sender: AnyObject) {
        
        self.performSegue(withIdentifier: "toCheckout", sender: self)
        
        let name = specificGameName.text
        let console = specificGameConsole.text
        let image = specificGameImage.image
        let price = specificPrice.text
        
         let game = GameInfo(name: name!, image: image, ratings: nil, reviews: nil, similarGames: nil, cost: price, console: console!, quantity: nil)
        
        checkOutCartArray.append(game)
        print("checkoutCartArray equals \(checkOutCartArray)")
        
    }
    
}





