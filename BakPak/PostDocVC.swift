//
//  PostDocVC.swift
//  BakPak
//
//  Created by User on 3/25/17.
//  Copyright © 2017 BakPak Edu. All rights reserved.
//

import UIKit

class PostDocVC: UIViewController {
    
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var groupField: UITextField!
    @IBOutlet weak var tagField: UITextField!
    @IBOutlet weak var docImage: UIImageView!
    @IBOutlet weak var publishToComun: UISwitch!
    
    override func awakeFromNib() {
         navigationController?.navigationBar.barTintColor = UIColor(red: 244.00, green: 67.00, blue: 54.00, alpha: 1.0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
