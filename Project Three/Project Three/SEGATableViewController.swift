//
//  SEGATableViewController.swift
//  Game Sifu
//
//  Created by Daniel Kim on 11/14/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class SEGATableViewController: UITableViewController {
    
    @IBOutlet weak var genesisBorder: UIView!
    
    @IBOutlet weak var genesisImage: UIImageView!
    
    @IBOutlet weak var genesisLabel: UIView!
    
    @IBOutlet weak var masterBorder: UIView!
    
    @IBOutlet weak var masterImage: UIImageView!
    
    @IBOutlet weak var masterLabel: UIView!
    
    @IBOutlet weak var gameGearImage: UIImageView!
    
    @IBOutlet weak var gameGearLabel: UIView!
    
    @IBOutlet weak var gameGearBorder: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        genesisImage.layer.cornerRadius = 15
        
        genesisLabel.layer.cornerRadius = 15
        
        genesisBorder.layer.cornerRadius = 15
        
        masterImage.layer.cornerRadius = 15
        
        masterLabel.layer.cornerRadius = 15
        
        masterBorder.layer.cornerRadius = 15
        
        gameGearImage.layer.cornerRadius = 15
        
        gameGearLabel.layer.cornerRadius = 15
        
        gameGearBorder.layer.cornerRadius = 15

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
