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
        
    }
    
}

