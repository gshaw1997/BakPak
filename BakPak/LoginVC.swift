//
//  LoginVC.swift
//  BakPak
//
//  Created by User on 3/24/17.
//  Copyright © 2017 BakPak Edu. All rights reserved.
//

import UIKit
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookPressed(_ sender: Any) {
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self){(result,error) in
            if error != nil {
                print("FB:Error - \(error)")
            }else if result?.isCancelled == true {
                print("FB: Users has cancelled")
            }else{
                print("FB: Success")
                
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                
                self.firbaseAuth(credential)
                
            }
        }
    }
    
    
//    @IBAction func signInPressed(_ sender: Any) {
//    }
    
    func firbaseAuth(_ credential: FIRAuthCredential){
        FIRAuth.auth()?.signIn(with: credential, completion:{ (user, error) in
            if error != nil{
                print("FIR: Unable to auth - \(error)")
            }else{
                print("FIR: Success auth")
            }
        })
    }
    
    
    @IBAction func twitterPressed(_ sender: Any) {
        
    }

}

