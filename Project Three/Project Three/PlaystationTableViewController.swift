//
//  PlaystationTableViewController.swift
//  Project Three
//
//  Created by Daniel Kim on 10/7/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import SwiftGifOrigin

class PlaystationTableViewController: UITableViewController {
    
    @IBOutlet weak var playstation1Gif: UIImageView!
    
    @IBOutlet weak var playstation2Gif: UIImageView!
    
    override func viewDidLoad () {
        super.viewDidLoad ()
        
        gifs()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func gifs () {
        
        playstation1Gif.image = UIImage.gif(name: "Playstation1")
        
        playstation2Gif.image = UIImage.gif(name: "Playstation2")
        
    }
    
}
