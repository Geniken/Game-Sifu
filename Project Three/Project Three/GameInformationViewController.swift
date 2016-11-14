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
    
    @IBOutlet weak var viewOfImage: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let price = costNow else {return}
        specificGameImage.image = imageNow
        specificGameName.text = textNow
        specificPrice.text = "$ \(price)"
        specificGameConsole.text = consoleNow
        viewOfImage.layer.cornerRadius = 15
        
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





