//
//  ProfileViewController.swift
//  Game Sifu
//
//  Created by Daniel Kim on 10/14/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit
import Social

class ProfileViewController: UIViewController {
    
    
    @IBAction func checkWares(_ sender: UIButton) {
    }
    
    @IBAction func shareToFacebook(_ sender: UIButton) {
        let shareToFacebook:SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeFacebook)
        
        self.present(shareToFacebook, animated:true, completion:nil)
    }
    
    @IBAction func shareToTwitter(_ sender: UIButton) {
        let shareToTwitter:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        self.present(shareToTwitter, animated:true, completion:nil)
    }
    
    @IBAction func cameraButtonPressed(_ sender: UIButton) {
        
        
    }
    
    @IBOutlet weak var profilePicture: UIImageView!
    
    
}
