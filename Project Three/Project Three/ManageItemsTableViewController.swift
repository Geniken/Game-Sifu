//
//  ManageItemsTableViewController.swift
//  Game Sifu
//
//  Created by Daniel Kim on 10/14/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit


class ManageItemsTableViewController: UITableViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    var selectedIndex:Int?
    
    override func numberOfSections(in tableView:UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return merchantItemsArray.count
        
    }
    
    override func tableView(_ tableView:UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "manageItems", for: indexPath) as! MerchantItemTableViewCell
        
        let merchantGameInfo = merchantItemsArray[indexPath.row]
        
        cell.merchantItemImage.image = merchantGameInfo.image
        
        cell.merchantItemName.text = merchantGameInfo.name
        
        cell.merchantItemPrice.text = merchantGameInfo.cost
        
        cell.merchantItemConsole.text = merchantGameInfo.console
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            merchantItemsArray.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            
        }
    }
}
