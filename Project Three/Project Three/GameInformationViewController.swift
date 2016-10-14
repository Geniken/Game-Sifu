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
    
    var gameInfoArray:[GameInfo] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

        
    }
    
}





