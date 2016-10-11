//
//  SignUpNewUserViewController.swift
//
//
//  Created by K on 10/11/16.
//
//

import Foundation
import Parse

class SignUpNewUserViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func signUpNewUser() {
        var user = PFUser()
        
        user.username = "myUsername"
        user.password = "myPassword"
        user.email = "email@example.com"
        // other fields can be set just like with PFObject
        user["phone"] = "415-392-0202"
        
        
        user.signUpInBackground { (succeeded, error) in
            
            if let error = error {
                print(error)
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

