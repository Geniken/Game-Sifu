//
//  LoginViewController.swift
//  Project Three
//
//  Created by Daniel Kim on 10/5/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit
import Parse

class LoginViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PFUser.logOut()
        
        let testObject = PFObject(className: "Name")
        testObject["name"] = "Daniel"
        testObject.saveInBackground { (success, error) -> Void in
            
            testObject.saveInBackground()
            print("Object has been saved.")
        }
        
        if currentUser != nil {
            print(currentUser)
            PFUser.getCurrentUserInBackground()
        }else {
            return
        }
        
    }
    
    var currentUser = PFUser.current()
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        guard let userNameField = userNameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        PFUser.logInWithUsername(inBackground: userNameField, password: password) { (user, error) in
            
            if error != nil {
                
                self.performSegue(withIdentifier: "signIn", sender: self)
                print("Yay you logged in")
                
                
            } else {
                
                print (error)
                
            }
        }
    }
    
    //    if currentUser != nil {
    //    // Do stuff with the user
    //    } else {
    //    // Show the signup or login screen
    //    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

