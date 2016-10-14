//
//  CategoriesViewController.swift
//  Project Three
//
//  Created by Daniel Kim on 10/6/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit


class CategoriesViewController: UITableViewController {
    
    @IBOutlet weak var nintendoGif: UIImageView!
    
    @IBOutlet weak var playstationGif: UIImageView!
    
    @IBOutlet weak var segaGif: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gifs()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func gifs () {
        
        nintendoGif.image = UIImage.gif(name:"Nintendo")
        
        segaGif.image = UIImage.gif(name:"Sega")
        
        playstationGif.image = UIImage.gif(name:"Playstation")
        
        
    }
}


