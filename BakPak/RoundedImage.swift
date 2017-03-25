//
//  RoundedImage.swift
//  BakPak
//
//  Created by User on 3/25/17.
//  Copyright © 2017 BakPak Edu. All rights reserved.
//

import UIKit

class RoundedImage: UIImageView {

    override func awakeFromNib() {
        
        layer.cornerRadius = frame.height/2
    
    }
}
