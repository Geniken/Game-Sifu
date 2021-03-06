//
//  SignUpViewController.swift
//  Game Sifu
//
//  Created by Daniel Kim on 10/11/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import Parse


class SignUpViewController: UIViewController {
    
    @IBOutlet weak var create: UIButton!
    
    @IBOutlet weak var signUpUsername: UITextField!
    
    @IBOutlet weak var signUpEmailAddress: UITextField!
    
    @IBOutlet weak var signUpPassword: UITextField!
    
    @IBOutlet weak var signUpPasswordConfirmation: UITextField!
    
    @IBAction func signUpUser(_ sender: UIButton) {
        
        signUpNewUser()
    }
    
    func signUpNewUser() {
        let user = PFUser()
        
        user.username = signUpUsername.text
        user.password = signUpPassword.text
        user.email = signUpEmailAddress.text
        // other fields can be set just like with PFObject
        
        user.signUpInBackground { (succeeded, error) in
            
            if error != nil {
                print("error"
                )
                // Show the errorString somewhere and let the user try again.
            } else {
                print("Successfully signed up \(user.username)")
                // Hooray! Let them use the app now.
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        create.layer.cornerRadius = 15
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AddItemViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

