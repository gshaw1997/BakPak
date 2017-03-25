//
//  PostView.swift
//  BakPak
//
//  Created by User on 3/25/17.
//  Copyright © 2017 BakPak Edu. All rights reserved.
//

import UIKit

class PostView: UIView {

    override func awakeFromNib() {
        layer.shadowOpacity = 0.25
        layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
    }

}
