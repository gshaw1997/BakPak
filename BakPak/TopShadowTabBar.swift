//
//  TopShadowTabBar.swift
//  BakPak
//
//  Created by User on 3/25/17.
//  Copyright © 2017 BakPak Edu. All rights reserved.
//

import UIKit

class TopShadowTabBar: UIView {

    override func awakeFromNib() {
        layer.shadowOpacity = 0.2
        layer.shadowOffset = CGSize(width: 0.0, height: -0.5)
    }

}
