//
//  GamesListClass.swift
//  Project Three: E-Commerce
//
//  Created by K on 10/4/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit

struct ItemInfo {
    
    let itemId: NSObject
    let title: NSObject
    let galleryURL: NSObject
    let viewItemURL: NSObject
    let autoPay: NSObject
    let postalCode: NSObject
    let sellingStatus: NSObject
    
    static func fromjson(dictionary: NSDictionary) -> ItemInfo? {
        guard let itemId = dictionary["itemId"] as? NSObject,
            let title = dictionary["title"] as? NSObject,
            let galleryURL = dictionary["galleryURL"] as? NSObject,
            let viewItemURL = dictionary["viewItemURL"] as? NSObject,
            let autoPay = dictionary["autoPay"] as? NSObject,
            let postalCode = dictionary["postalCode"] as? NSObject,
            let sellingStatus = dictionary["sellingStatus"] as? NSObject else {
                print("Guard failed on fromJson()")
                return nil
        }
        
        guard let priceArray = dictionary["sellingStatus"] as? NSArray else { return nil }
        
        for i in priceArray {
            
            guard let dictionary = i as? NSDictionary else { return nil }
            
            guard (dictionary["currentPrice"] as? NSArray) != nil else { return nil }

//            for i in currentPriceArray {
//                
//                guard let dictionary = i as? NSDictionary else { return nil }
//                
//                guard let value = currentPriceArray["__value__"] as? String else { return nil }
//                
//            }
        }
        
        
        return ItemInfo(itemId: itemId, title: title, galleryURL: galleryURL, viewItemURL: viewItemURL, autoPay: autoPay, postalCode: postalCode, sellingStatus: sellingStatus)
        
    }
    
    
    
}
