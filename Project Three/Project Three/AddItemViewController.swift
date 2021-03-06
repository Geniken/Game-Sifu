
//
//  AddItemViewController.swift
//  Game Sifu
//
//  Created by Daniel Kim on 10/10/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit
import Parse


class AddItemViewController : UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var gameNameText: UITextField!
    
    @IBOutlet weak var askingPriceText: UITextField!
    
    @IBOutlet weak var gameQuantityText: UITextField!
    
    @IBOutlet weak var gameAgeText: UITextField!
    
    @IBOutlet weak var gameImagePicture: UIButton!
    
    @IBOutlet weak var gameUsername: UITextField!
    
    @IBOutlet weak var gameConsole: UITextField!
    
    @IBOutlet weak var saveImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AddItemViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func confirmItemInfo(_ sender: UIButton) {
        
        registerGame()
        
        //        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func imageButtonPressed(_ sender: AnyObject) {
        
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = UIImagePickerControllerSourceType.camera
        
        picker.allowsEditing = false
        
        present(picker, animated: true, completion: nil)
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        saveImage.image = info[UIImagePickerControllerOriginalImage] as? UIImage; dismiss(animated: true, completion: nil)
    }
    
    func convertToPFFile(image: UIImage?) -> PFFile? {
        
        guard let image = image else { print("nil iamge") ; return nil }
        guard let imageData = UIImagePNGRepresentation(image) else { print("no data") ; return nil }
        
        let imageFile = PFFile(name: "image.png", data: imageData)
        
        return imageFile
        
    }
    
    //        if let gameImage = image {
    //            guard let imageData = UIImageJPEGRepresentation(gameImage, 1.0) else { return nil }
    //            let imageFile = PFFile(name:"image.jpeg", data:imageData)
    //
    //            return imageFile
    //        } else {
    //            return nil
    //        }
    
    
    func registerGame () {
        
        let game = PFObject(className:"GameInformation")
        
        game["gameName"] = gameNameText.text
        game["gameConsole"] = gameConsole.text
        game["gamePrice"] = askingPriceText.text
        game["gameQuantity"] = gameQuantityText.text
        game["gameAge"] = gameAgeText.text
        //        game["picture"] = convertToPFFile(image: saveImage.image)
        game["Username"] = gameUsername.text
        
        
        game.saveInBackground { (suceeded: Bool, error: Error?) in
            guard error == nil else { print("error is \(error)") ; return }
            
            if suceeded {
                
                print ("success")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

//
//
//extension UIImage {
//
//    enum JPEGQuality: CGFloat {
//
//        case lowest = 0
//        case low = 0.25
//        case medium = 0.5
//        case high = 0.75
//        case max = 1
//
//        var pngData:Data? {return UIImagePNGRepresentation(UIImage)
//        }
//        func jpegData(_ quality:JPEGQuality) -> Data {
//            return UIImageJPEGRepresentation(UIImage, quality.rawValue)
//        }
//
//        if let imageData = image.jpegData(.lowest) {
//            print (imageData.count)
//        }
//    }
//}
