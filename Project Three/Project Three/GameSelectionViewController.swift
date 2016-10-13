//
//  GameSelectionViewController.swift
//  Game Sifu
//
//  Created by Daniel Kim on 10/10/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit
import Parse


class GameSelectionViewController: UICollectionViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        queryParse()
    }
    
    var gameInfoArray: [GameInfo] = []
    
    func queryParse() {
        
        var query = PFQuery(className:"GameInformation")
        
        //query.whereKey("gameName", equalTo:"Mario Kart: Double Dash")
        
        query.findObjectsInBackground(block: { (objects, error) in
            
            guard error == nil else { print("error finding objects: \(error)") ; return }
            guard let objects = objects else { return }
            
            for object in objects {
                
                guard let name = object["gameName"] as? String else { print("nil name found"); return }
                guard let cost = object["gamePrice"] as? String else { print("nil cost found") ; return }
                guard let console = object["gameConsole"] as? String else { print("nil console found");return }
                guard let quantity = object["gameQuantity"] as? String else { print("nil quanity found") ; return}
                
                let game = GameInfo(name: name, image: nil, ratings: nil, reviews: nil, similarGames: nil, cost: cost, console: console, quantity: quantity)
                print("GAME: \(game)")
                self.gameInfoArray.append(game)
                
                print(self.gameInfoArray.count)
            }
            
            self.collectionView?.reloadData()
           
        })
        
        
//        var imageQuery = PFQuery(className:"GameInformation")
//        
//        imageQuery.findObjectsInBackground(block: { (objects, error) in
//            
//            guard error == nil else { print("error finding objects: \(error)") ; return }
//            guard let objects = objects else { return }
//            
//            for object in objects {
//                
//                let userImageFile = anotherPhoto["imageFile"] as PFFile
//                userImageFile.getDataInBackgroundWithBlock {
//                    (imageData: NSData?, error: NSError?) -> Void in
//                    if error == nil {
//                        if let imageData = imageData {
//                            let image = UIImage(data:imageData)
//                        }
//                    }
//                }
//                
//                guard let image = object["picture"] as? PFFile else { return }
//                
//                let game = GameInfo(name: name, image: image, ratings: nil, reviews: nil, similarGames: nil, cost: cost)
//                
//                print("objets returned from query: \(object)")
//            }
//            
//        })

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension GameSelectionViewController {
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gameInfoArray.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! GamesSelectionCollectionViewCell
        
        let parseData = self.gameInfoArray[indexPath.row]
        
        cell.gameName.text = parseData.name
        
        return cell
    }
    
}

fileprivate let itemsPerRow: CGFloat = 2

fileprivate let sectionInsets = UIEdgeInsets(top: 100.0, left: 40.0, bottom: 100.0, right: 40.0)

extension GameSelectionViewController : UICollectionViewDelegateFlowLayout {
    //1
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        //2
        
        
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth /   itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    //3
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    // 4
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}


