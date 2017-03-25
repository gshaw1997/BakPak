//
//  PostDocVC.swift
//  BakPak
//
//  Created by User on 3/25/17.
//  Copyright © 2017 BakPak Edu. All rights reserved.
//

import UIKit

class PostDocVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var groupField: UITextField!
    @IBOutlet weak var tagField: UITextField!
    @IBOutlet weak var docImage: UIImageView!
    @IBOutlet weak var publishToComun: UISwitch!
    
    var feedVC: FeedVC?
    
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func uploadPressed(_ sender: Any) {
        
        
        present(imagePicker, animated: true, completion: nil)
        
    }
    
     func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            docImage.image = pickedImage
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func savePostPressed(_ sender: Any) {
        
        let newPost = Post()
        newPost.docTitle = titleField.text
        newPost.tags = titleField.text
        feedVC?.currentPosts.append(newPost)
        print("All Posts: \(feedVC?.currentPosts)")
        dismiss(animated: true, completion: nil)
        
    }
    

}
