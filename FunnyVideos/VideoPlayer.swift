//
//  VideoPlayer.swift
//  FunnyVideos
//
//  Created by S3 Technology on 20/02/2017.
//  Copyright © 2017 S3 Technologies. All rights reserved.
//

import UIKit

class VideoPlayer: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var likePressed: UIButton!
    @IBOutlet weak var likeUnpressed: UIButton!
    
    var video: funnyVideos!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        likeUnpressed.isHidden = true
        nameLabel.text = video.name
        }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
   
    @IBAction func likePressed(_ sender: UIButton) {
        likePressed.isHidden = true
        likeUnpressed.isHidden = false
        
    }
    
    @IBAction func likeunPressed(_ sender: UIButton) {
        likeUnpressed.isHidden = true
        likePressed.isHidden = false
    }


}
