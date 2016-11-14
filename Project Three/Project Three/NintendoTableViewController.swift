//
//  NintendoTableViewController.swift
//  Project Three
//
//  Created by Daniel Kim on 10/7/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import SwiftGifOrigin

class NintendoTableViewController: UITableViewController {
    
    @IBOutlet weak var nintendoBorder: UIView!
    
    @IBOutlet weak var nintendoLabel: UIView!
    
    @IBOutlet weak var gamecubeBorder: UIView!
    
    @IBOutlet weak var gamecubeLabel: UIView!
    
    @IBOutlet weak var GBALabel: UIView!
    
    @IBOutlet weak var nintendo64Gif: UIImageView!
    
    @IBOutlet weak var gamecubeGif: UIImageView!
    
    @IBOutlet weak var GBAGif: UIImageView!
    
    @IBOutlet weak var GBABorder: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nintendoBorder.layer.cornerRadius = 15
        
        nintendo64Gif.layer.cornerRadius = 15
        
        nintendoLabel.layer.cornerRadius = 15
        
        gamecubeGif.layer.cornerRadius = 15
        
        gamecubeLabel.layer.cornerRadius = 15
        
        gamecubeBorder.layer.cornerRadius = 15
        
        GBAGif.layer.cornerRadius = 15
        
        GBALabel.layer.cornerRadius = 15
        
        GBABorder.layer.cornerRadius = 15
        
        gifs() 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func gifs () {
        
        nintendo64Gif.image = UIImage.gif(name:"Nintendo64")
        
        gamecubeGif.image = UIImage.gif(name:"Gamecube")
        
        GBAGif.image = UIImage.gif(name:"GBA")
    }
    
}
