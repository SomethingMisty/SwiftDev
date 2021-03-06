//
//  FullScreenImageCollectionViewController.swift
//  Application
//
//  Created by Alex Gikaev on 29.07.2021.
//

import UIKit


class FullScreenImageCollectionViewController: UICollectionViewController {
    
    private var reuseID = "FullScreenImageCollectionViewCell"
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseID, for: indexPath) as? FullScreenImageCollectionViewCell else {
            fatalError("{Message: Error in dequeue FriendTableViewCell}")
        }
        return cell
    }
}
