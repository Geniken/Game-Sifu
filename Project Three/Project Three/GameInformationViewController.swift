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
    
//    overrride func viewDidLoad() {
//        super.viewDidLoad()
//    }

    @IBOutlet weak var specificGameImage: UIImageView!
  
    @IBOutlet weak var specificGameName: UILabel!
    
    @IBOutlet weak var specificGameConsole: UILabel!
    
    @IBOutlet weak var specificPrice: UILabel!
    
    @IBAction func addToCart(_ sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        specificGameImage.image = imageNow
        specificGameName.text = textNow
//        specificPrice. = priceNow
        specificGameConsole.text = consoleNow
        
        
    }
    
    
    
}
