//
//  mainVC.swift
//  FunnyVideos
//
//  Created by S3 Technology on 20/02/2017.
//  Copyright © 2017 S3 Technologies. All rights reserved.
//

import UIKit

class mainVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchButton: UIButton!
    
    var videoArray =  [funnyVideos]()
    var search: Bool = true
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        searchBar.isHidden = true
        
        collection.dataSource = self
        collection.delegate = self

    }

    @IBAction func searchBtnPressed(_ sender: UIButton) {
        if search {
            searchButton.isHidden = true
            searchBar.isHidden = false
        }
        else {
            searchBar.isHidden = true
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as? fvCell {
        return cell
        }
    else {
        return UICollectionViewCell()
        }
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        var video: funnyVideos!
//        video = videoArray[indexPath.row]
//        
//        performSegue(withIdentifier: "segue", sender: video)
//        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 125, height: 125)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "segue" {
//            if let videosVC = segue.destination as? VideoPlayer {
//                if let cell = sender as? funnyVideos {
//                    videosVC.video = cell
//                }
//            }
//        }
//        
//    }
//    
}

