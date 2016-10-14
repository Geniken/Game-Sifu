//
//  CheckoutTableViewController.swift
//  Game Sifu
//
//  Created by Daniel Kim on 10/13/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit
import Parse


class CheckoutTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    var selectedIndex: Int?
    
    var gameCheckoutInfoArray: [GameInfo] = []
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameCheckoutInfoArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCheckoutCell", for: indexPath) as! CheckoutTableViewCell
        
        let parseData = self.gameCheckoutInfoArray[indexPath.row]
        
        cell.checkoutName.text = textNow
        cell.checkoutImage.image = imageNow
        cell.checkoutPrice.text = costNow
        cell.checkoutConsole.text = consoleNow
        
        
        return cell
    }
    
    
    //    override func tableView(_ tableView: UITableView, didSelectItemAt indexPath: IndexPath) {
    //
    //        let row = indexPath.row
    //
    //        guard row >= 0 && row < gameInfoArray.count else { return }
    //
    //        imageCheckout = gameInfoArray[row].image
    //        nameCheckout = gameInfoArray[row].name
    //        consoleCheckout = gameInfoArray[row].console
    //        costCheckout = gameInfoArray[row].cost
    //
    //
    //        self.performSegue(withIdentifier: "toCheckout", sender: self)
    //    }
    
    
    //    checkoutImage.image = imageCheckout
    //    checkoutName.text = nameCheckout
    //    checkoutConsole.text = consoleCheckout
    //    checkoutPrice.text = costCheckout
    
    //}
}
