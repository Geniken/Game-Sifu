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
    
    @IBAction func addPictureButton(_ sender: AnyObject) {
    }
    
    
        var gameScore = PFObject(className:"addGameInfo")
        
        addGameInfo["gameName"] = gameNameText.text
        addGameInfo["price"] = askingPriceText.text
        addGameInfo["quantity"] = gameQuantityText.text
        addGameInfo["yearsOwned"] = gameAgeText.text
        
        AddItemInfo.saveInBackgroundWithBlock {
            
            (success: Bool, error: NSError?) -> Void in
            
            if (success) {
                print("saved")
                
            } else {
                
                print("not saved")
                
            }
        }
    }
