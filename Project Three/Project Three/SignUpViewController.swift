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
    

    @IBOutlet weak var signUpUsername: UITextField!
    
    @IBOutlet weak var signUpEmailAddress: UITextField!
    
    @IBOutlet weak var signUpPassword: UITextField!
    
    @IBOutlet weak var signUpPasswordConfirmation: UITextField!
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
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
}
