//
//  Description.swift
//  Project Three: E-Commerce
//
//  Created by Daniel Kim on 10/3/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation

struct Description {
    
    let text:String
    let user: User
    let url: String
    let rating: Double
    let review: [String]
    
}

//extension Description {
//    static func fromDictionary(dictionary:NSDictionary) -> Description? {
//        
//        guard let text = dictionary[" "] as? String,
//            let user = dictionary[" "] as? User,
//            let url = dictionary[" "] as? String
//        
//        
//        
//    }
//    else {
//    return
//    }
//}
