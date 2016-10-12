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
    
    @IBOutlet weak var logoutButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        query()
        
        
        print("current User: \(PFUser.current())")
        
        if let user = PFUser.current() {
            print("USER: \(user)")
            self.performSegue(withIdentifier: "signIn", sender: self)
            
            //        let testObject = PFObject(className: "Name")
            //        testObject["name"] = "Daniel"
            //        testObject.saveInBackground { (success, error) -> Void in
            //
            //            testObject.saveInBackground()
            //            print("Object has been saved.")
            
        }
        
    }
    
    
    var currentUser = PFUser.current()
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        guard let userNameField = userNameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        
        
        PFUser.logInWithUsername(inBackground: userNameField, password: password) { (user, error) in
            
            print(error)
            print(user)
            
            if error != nil {
                
                self.performSegue(withIdentifier: "signIn", sender: self)
                print("Yay you logged in")
                print(user)
                
            } else {
                
                print ("error: \(error)")
                
            }
        }
    }
    
    @IBAction func logoutButtonPressed(_ sender: UIBarButtonItem) {
        
        PFUser.logOut()
    }
    
    
    func query() {
        let query = PFUser.query()
        query?.findObjectsInBackground(block: { (objects, error) in
            
            guard error == nil else { print(error) ; return }
            guard let objects = objects else { return }
            
            for object in objects {
                print(object)
            }
            
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
