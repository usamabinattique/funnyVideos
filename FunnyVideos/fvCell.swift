//
//  fvCell.swift
//  FunnyVideos
//
//  Created by S3 Technology on 20/02/2017.
//  Copyright © 2017 S3 Technologies. All rights reserved.
//

import UIKit

class fvCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    var fvideos: funnyVideos!
    
    func configureCell (fvideos: funnyVideos){
        self.fvideos = fvideos
        nameLbl.text = self.fvideos.name.capitalized
        //imageView.image = UIImage(named: "\()")
        
    }
}
