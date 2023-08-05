//
//  MovieCell.swift
//  FanBase
//
//  Created by Maryna Bolotska on 04/08/23.
//

import UIKit

class MovieCell: UITableViewCell,  UICollectionViewDelegate,UICollectionViewDataSource {
    
    private(set) public var actors = [Actor]()
    
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    

    
    
    func initProducts(category: Movie) {
        actors = DataService.instance.getProducts(forCategoryTitle: category.title)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return actors.count
     //   return DataService.instance.collectionDataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCell", for: indexPath) as? ActorCell {
                        let product = actors[indexPath.row]
                        cell.updateViews(product: product)
                        return cell
                    }
                    return ActorCell()
            
//            let collectionData = DataService.instance.collectionDataArray[indexPath.item]
//            cell.actorImage.image = UIImage(named: collectionData.imageName)
//            cell.actorName.text = collectionData.name
//            
//            return cell
//            
//        }
//        return ActorCell()
    }
}
