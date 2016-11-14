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
    
    @IBOutlet weak var playstation1Border: UIView!
    
    @IBOutlet weak var playstationLabel: UIView!
    
    @IBOutlet weak var playstation2Border: UIView!
    
    @IBOutlet weak var playstation2Label: UIView!
    
    @IBOutlet weak var playstation1Gif: UIImageView!
    
    @IBOutlet weak var playstation2Gif: UIImageView!
    
    override func viewDidLoad () {
        super.viewDidLoad ()
        
        playstation1Gif.layer.cornerRadius = 15
        
        playstationLabel.layer.cornerRadius = 15
        
        playstation1Border.layer.cornerRadius = 15
        
        playstation2Gif.layer.cornerRadius = 15
        
        playstation2Label.layer.cornerRadius = 15
        
        playstation2Border.layer.cornerRadius = 15
        
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
