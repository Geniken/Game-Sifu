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
    
    @IBOutlet weak var searchButton: UIBarButtonItem!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gifs()
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
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
    
    @IBAction func searchButtonPressed(_ sender: UIBarButtonItem) {
        
        guard let text: String = searchTextField.text else { return }
        
        keyForSearch = text
        
    }
    
}
