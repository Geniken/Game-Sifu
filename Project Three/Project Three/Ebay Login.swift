//
//  Ebay Login.swift
//  Project Three
//
//  Created by Daniel Kim on 10/5/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit

class LoginViewController: UIViewController, UIWebViewDelegate {
    
    
    @IBOutlet weak var loginOutlet: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loginOutlet.loadRequest(URLRequest(url: URL(string: "https://signin.ebay.com/ws/eBayISAPI.dll?SignIn&regUrl=https%253A%252F%252Freg.ebay.com%252Freg%252FPartialReg")! as URL) as URLRequest)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
        
    }
    
}

