//
//  PhotoAlbumController.swift
//  vkApp
//
//  Created by Alex Shader on 03.06.2020.
//  Copyright © 2020 shaderness. All rights reserved.
//

import UIKit

class PhotoAlbumController: UICollectionViewController {
    
    var photos = [UIImage]()
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int { 1 }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { photos.count }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCollectionViewCell
        cell.photoImageView.image = photos[indexPath.row]
        return cell
    }
    
}

extension PhotoAlbumController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 50) / 2
        
        return CGSize(width: width, height: width)
    }
}
