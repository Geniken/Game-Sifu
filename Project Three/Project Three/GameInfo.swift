//
//  Info.swift
//  Project Three: E-Commerce
//
//  Created by Daniel Kim on 9/30/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation

struct GameInfo {
    let image:URL
    let cost: String
    //    let similarGames: [URL]
}


extension GameInfo {
    static func fromDictionary(_ dictionary: NSDictionary) -> GameInfo? {
        
        guard let image = dictionary["galleryURL"] as? URL,
            let cost = dictionary["ConvertedCurrentPrice"] as? String
            else {
                print ("unable to retreive information")
                return nil
        }
        
        return GameInfo (image:image, cost:cost)
    }
}
