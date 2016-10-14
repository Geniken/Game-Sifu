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

var keyForSearch: String!

class GameSelectionViewController: UICollectionViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        queryParse()
        
    }
    
    var selectedIndex: Int?
    
    var gameInfoArray: [GameInfo] = []
    
    func queryParse() {
        
        //guard keyForSearch != nil else { print("unwrapping of keyForSearch returned \(keyForSearch)"); return }
        
        let query = PFQuery(className: "GameInformation")
        
        //query.whereKey("gameName", equalTo: "\(keyForSearch)")
        
        query.findObjectsInBackground(block: { (objects, error) in
            
            
            
            guard error == nil else { print("error finding objects: \(error)") ; return }
            guard let objects = objects else { return }
            
            
            for object in objects {
                
                guard let name = object["gameName"] as? String else { print("nil name found"); return }
                guard let cost = object["gamePrice"] as? String else { print("nil cost found") ; continue }
                guard let console = object["gameConsole"] as? String else { print("nil console found");continue }
                guard let quantity = object["gameQuantity"] as? String else { print("nil quanity found") ; continue }
                guard let image = object["picture"] as? PFFile else { return }
                
                image.getDataInBackground(block: { (imageData, error) in
                    
                    guard error == nil else { print("error returning imageData: \(imageData)"); return }
                    guard let imageData = imageData else { return }
                    let convertedImage = UIImage(data: imageData)
                    
                    let game = GameInfo(name: name, image: convertedImage, ratings: nil, reviews: nil, similarGames: nil, cost: cost, console: console, quantity: quantity)
                    
                    self.gameInfoArray.append(game)
                    
                    DispatchQueue.main.async {
                        self.collectionView?.reloadData()
                        
                    }
                    
                })
                
            }
            
        })
        
    }
    
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
        cell.gameImage.image = parseData.image
        print(parseData.image)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let row = indexPath.row
        
        guard row >= 0 && row < gameInfoArray.count else { return }
        
        imageNow = gameInfoArray[row].image
        textNow = gameInfoArray[row].name
        
        
        self.performSegue(withIdentifier: "gameInfoSegue", sender: self)
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





