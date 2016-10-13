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
                
                guard let name = object["gameName"] as? String else { return }
                print(name)
                guard let cost = object["gamePrice"] as? Double else { return }
                print(cost)
                guard let console = object["gameConsole"] as? String else { return }
                guard let quantity = object["gameQuantity"] as? Int else {return}
                
                let game = GameInfo(name: name, image: nil, ratings: nil, reviews: nil, similarGames: nil, cost: cost, console: console, quantity: quantity)
                
                self.gameInfoArray.append(game)
                
            }
            
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
        return 10
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! GamesSelectionCollectionViewCell
        
        
        
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


