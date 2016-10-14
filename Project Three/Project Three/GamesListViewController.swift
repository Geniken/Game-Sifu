//
//  GamesListViewController.swift
//  Project Three: E-Commerce
//
//  Created by K on 10/4/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

//import Foundation
//import UIKit
//
//class GamesListViewController: UITableViewController {
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        apiCall()
//    }
//    
//    var searchURL = "http://svcs.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsByKeywords&SERVICE-VERSION=1.0.0&SECURITY-APPNAME=KevinBra-GameSifu-PRD-f2f4c750a-ebdce035&RESPONSE-DATA-FORMAT=JSON&REST-PAYLOAD&"
//    
//    var keyword = "keywords="
//    
//    var inputKeyword = "nintendo%2064"
//    
//    var gameInfoArray: [ItemInfo] = []
//    
//    func apiCall() {
//        
//        let emptyString = searchURL + keyword + inputKeyword
//        
//        let url = URL(string: emptyString)!
//        
//        guard let data = try? Data(contentsOf: url),
//            let json = (try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)) as? NSDictionary else {
//                return
//        }
//        
//        guard let findItemsByKeywordsResponse = json["findItemsByKeywordsResponse"] as? NSArray else { return }
//        
//        for index in findItemsByKeywordsResponse {
//            
//            guard let dictionary = index as? NSDictionary else { return }
//            
//            if let searchResult = dictionary["searchResult"] as? NSArray {
//                
//                for index in searchResult {
//                    
//                    guard let dictionary = index as? NSDictionary else { return }
//                    
//                    guard let item = dictionary["item"] as? NSArray else { return }
//                    
//                    for index in item {
//                        
//                        guard let dictionary = index as? NSDictionary else { return }
//                        
//                        guard let gameInfo = ItemInfo.fromjson(dictionary: dictionary) else {
//                            return
//                        }
//                        
//                        gameInfoArray.append(gameInfo)
//                        print(gameInfoArray)
//                    }
//                    
//                }
//                
//                return
//            }
//            
//        }
//        
//    }
//    
//    
//    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 10
//    }
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? GamesListTableViewCell else { return UITableViewCell() }
//        
////        let gameInfo = gameInfoArray[indexPath.row]
//
//      
////        cell.gameName.text = gameInfo.title as! String
//        
//        return cell
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//}
//
//




