//
//  ViewController.swift
//  MyPhotoApp
//
//  Created by Sabahat Usman on 6/14/19.
//  Copyright © 2019 Sabahat Usman. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    var imagePickerController: UIImagePickerController!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func takePhoto(_ sender: Any) {
        if (UIImagePickerController.isSourceTypeAvailable(.camera))
        {
        imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .camera
        present(imagePickerController,animated:true,completion:nil)
        
        }
        else{
            print("no camera")
        }
    }
    @IBAction func savePhoto(_ sender: Any) {
        saveImage(imageName:"test.png")
        
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePickerController.dismiss(animated:true, completion:nil)
        photoImageView.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
    }
    func saveImage(imageName: String){
        let fileManager = FileManager.default
        let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(imageName)
        let image = photoImageView.image!
        let imageData = image.pngData()
        fileManager.createFile(atPath: imagePath as String, contents: imageData, attributes:nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

