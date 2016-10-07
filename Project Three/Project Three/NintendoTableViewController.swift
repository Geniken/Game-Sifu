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
    
    @IBOutlet weak var nintendo64Gif: UIImageView!
    
    @IBOutlet weak var gamecubeGif: UIImageView!
    
    @IBOutlet weak var GBAGif: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gifs() 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func gifs () {
        
        nintendo64Gif.image = UIImage.gifWithName("Nintendo64")
        
        gamecubeGif.image = UIImage.gifWithName("Gamecube")
        
        GBAGif.image = UIImage.gifWithName("GBA")
    }
    
}
