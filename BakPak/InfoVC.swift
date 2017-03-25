//
//  InfoVC.swift
//  BakPak
//
//  Created by User on 3/25/17.
//  Copyright © 2017 BakPak Edu. All rights reserved.
//

import UIKit

class InfoVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var welcomeLbl: UILabel!
    
    @IBOutlet weak var classPicker: UIPickerView!
    
    @IBOutlet weak var majorBtn: RoundedButton!
    
    @IBOutlet weak var classBtn: RoundedButton!
    
    var majorPick = false
    var classPick = false
    
    var major:String!
    var classification:String!
    
    let majors = ["Accounting","Agricultural Business Management","Agricultural Science","American Studies","Animal Sciences","Biochemistry and Biophysics","Bioengineering","Biology","Business Information Systems","Chemistry","Civil Engineering","Computer Science","Computer Engineering","Digital Communication Arts","Economics","English","Finance"]
    let classifications = ["Freshman","Sophomore", "Junior", "Senior"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        classPicker.delegate = self
        classPicker.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if majorPick == true{
            return majors.count
        }else if classPick == true{
            return classifications.count
        }
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if majorPick == true{
            return majors[row]
        }else{
            return classifications[row]
        }

    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if majorPick == true {
            let selected = majors[row]
            major = selected
            majorBtn.setTitle(selected, for: .normal)
            majorBtn.titleEdgeInsets = UIEdgeInsetsMake(10,10,10,10)
        }else if classPick == true{
            let selected = classifications[row]
            classification = selected
            classBtn.setTitle(selected, for: .normal)
            classBtn.titleEdgeInsets = UIEdgeInsetsMake(10,10,10,10)
        }
        
        classPicker.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "InfoToFeed"{
            
            let vc = segue.destination as! FeedVC
            
            vc.user_major = major
            vc.user_classification = classification
        }
    }
    
    @IBAction func majorPressed(_ sender: Any) {
        
        classPick = false
        majorPick = true
        classPicker.isHidden = false;
       

        
    }
    
    
    @IBAction func classPressed(_ sender: Any) {
        
        majorPick = false
        classPick = true
        classPicker.isHidden = false;
        
    }
    
    @IBAction func getStartedPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "InfoToFeed", sender: nil)
    }
   
    


}
