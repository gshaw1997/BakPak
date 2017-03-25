//
//  PostCell.swift
//  BakPak
//
//  Created by User on 3/25/17.
//  Copyright © 2017 BakPak Edu. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

   
    @IBOutlet weak var docPreviewImg: UIImageView!
    
    @IBOutlet weak var docTitileLbl: UILabel!
    
    
    @IBOutlet weak var dateLbl: UILabel!
    
    
    @IBOutlet weak var tagsLbl: UILabel!
    
    
    
    
    override func awakeFromNib() {
       
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(element: Post){
        
        self.docTitileLbl.text = element.docTitle
        self.dateLbl.text = element.postDate
        self.tagsLbl.text = element.tags
        
        if let image = element.docPreview{
            self.docPreviewImg.image = image

        }else{
            self.docPreviewImg.image = UIImage(named: "notesssexample")
        }
        
    }

}
