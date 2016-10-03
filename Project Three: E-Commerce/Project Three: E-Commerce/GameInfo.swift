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
    let description: String
    let cost: String
    //    let similarGames: [URL]
}


extension GameInfo {
    static func fromDictionary(dictionary: NSDictionary) -> GameInfo? {
        
        guard let image = dictionary[" "] as? URL,
            let description = dictionary[" "] as? String,
            let cost = dictionary[" "] as? String
            else {
                print ("unable to retreive information")
                return nil
        }
        
        return GameInfo (image:image, description:description, cost:cost)
    }
}
