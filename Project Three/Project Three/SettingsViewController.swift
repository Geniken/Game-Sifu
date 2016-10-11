//
//  File.swift
//  Game Sifu
//
//  Created by Daniel Kim on 10/10/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit
import SideMenu

class SettingsViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        
        SideMenuManager.menuFadeStatusBar = false
        SideMenuManager.menuPresentMode = .viewSlideInOut
        SideMenuManager.menuShadowColor = UIColor.clear
        
    }
    
    
}
