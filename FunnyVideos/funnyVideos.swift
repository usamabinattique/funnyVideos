//
//  funnyVideos.swift
//  FunnyVideos
//
//  Created by S3 Technology on 20/02/2017.
//  Copyright © 2017 S3 Technologies. All rights reserved.
//

import Foundation
import Alamofire

class funnyVideos {
    private var _name: String!
    private var _image: UIImage!
    let url: String = "http://apps.s3tv.com/funny_videos/videos.php"
    
    var funnyVideo: funnyVideos!
    
    var name: String {
        if _name == nil {
            return ""
        }
        return _name
    }
    
    func downloadvideoDetails (completed: @escaping DownloadComplete){
        Alamofire.request(url).responseJSON { (response) in
            print(response.result.value!)
            if let dict = response.result.value as? Dictionary<String, AnyObject>{
                if let data = dict["data"] as? [Dictionary<String, AnyObject>]{
                    if let title = data[1]["title"] as? String {
                        self._name = title
                    }
                }
            }
            print(self._name)
            
        }
        completed()
    }
}
