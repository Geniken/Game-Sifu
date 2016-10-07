//
//  ViewController.swift
//  Project Three
//
//  Created by Daniel Kim on 10/3/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit
import SwiftGifOrigin

class ViewController: UIViewController {
    
    @IBOutlet weak var nintendoGif: UIImageView!

    @IBOutlet weak var playstationGif: UIImageView!
    
    @IBOutlet weak var segaGif: UIImageView!
    
    @IBOutlet weak var playstation1Gif: UIImageView!
    
    @IBOutlet weak var playstation2Gif: UIImageView!
    
    @IBOutlet weak var nintendo64Gif: UIImageView!
    
    @IBOutlet weak var gamecubeGif: UIImageView!
    
    @IBOutlet weak var GBAGif: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gifs () {

        nintendoGif.image = UIImage.gifWithName("Nintendo")
        
        segaGif.image = UIImage.gifWithName("Sega")
        
        playstationGif.image = UIImage.gifWithName("Playstation")
        
        playstation1Gif.image = UIImage.gifWithName("Playstation1")
        
        playstation2Gif.image = UIImage.gifWithName("Playstation2")
        
        nintendo64Gif.image = UIImage.gifWithName("Nintendo64")
        
        gamecubeGif.image = UIImage.gifWithName("Gamecube")
        
        GBAGif.image = UIImage.gifWithName("GBA") 
        
    }
    
}

