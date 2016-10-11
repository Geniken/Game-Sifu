//
//  AddItemViewController.swift
//  Game Sifu
//
//  Created by Daniel Kim on 10/10/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit
import Parse


class AddItemViewController : UIViewController {
    
    @IBOutlet weak var gameNameText: UITextField!
    
    @IBOutlet weak var askingPriceText: UITextField!
    
    @IBOutlet weak var gameQuantityText: UITextField!
    
    @IBOutlet weak var gameAgeText: UITextField!
    
    @IBOutlet weak var gameImagePicture: UIButton!

    @IBOutlet weak var gameUsername: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func confirmItemInfo(_ sender: UIButton) {
        
        registerGame()
        
//        dismiss(animated: true, completion: nil)
        
    }
    
    
    func registerGame () {
        
        let game = PFObject(className:"GameInformation")
        
        game["gameName"] = gameNameText.text
        game["gamePrice"] = askingPriceText.text
        game["gameQuantity"] = gameQuantityText.text
        game["gameAge"] = gameAgeText.text
        game["gameImage"] = gameImagePicture.image
        game["username"] = gameUsername.text
        
        game.saveInBackground { (suceeded, error) in
            
            if error != nil {
                print ("error")
            } else {
                print ("saved")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
