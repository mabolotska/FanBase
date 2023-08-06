//
//  MovieCell.swift
//  FanBase
//
//  Created by Maryna Bolotska on 04/08/23.
//

import UIKit

class MovieCell: UITableViewCell,  UICollectionViewDelegate,UICollectionViewDataSource {
    var mergedActors: [Actor] = DataService.instance.godFatherActors + DataService.instance.moodLoveActors + DataService.instance.goodfellasActors
    
    let array1 = [DataService.instance.godFatherActors]
    let array2 = [DataService.instance.moodLoveActors]
    let array3 =  [DataService.instance.goodfellasActors]
    
    let goodfellasActors = [
                Actor(name: "Ray Liotta", imageName: "7.jpg"),
                Actor(name: "Robert de Niro", imageName: "8.jpg"),
                Actor(name: "Joe Pesci", imageName: "9.jpg")
            ]

            let otherMovieActors = [
                Actor(name: "Actor 1", imageName: "1.jpg"),
                Actor(name: "Actor 2", imageName: "2.jpg"),
                Actor(name: "Actor 3", imageName: "3.jpg")
            ]
    
    lazy var allActorArrays = [array1, array2, array3]
    
    private(set) public var actors = [Actor]()
    
    
    lazy var actorSections = [goodfellasActors, otherMovieActors]
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    
    override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        movieCollectionView.dataSource = self
        movieCollectionView.delegate = self
 //       movieCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "ActorCell")
        
        }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return actorSections.count
      }

      // Number of items in each section
      func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return actorSections[section].count
      }
    

    
    func initProducts(category: Movie) {
        actors = DataService.instance.getProducts(forCategoryTitle: category.title)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCell", for: indexPath) as! ActorCell
     
     //   let dataArray = allActorArrays[indexPath.section]

                // Get the data item for the current row in the section
         //       let collectionData = dataArray[indexPath.row]

                // Configure the cell using the data item
              //  cell.configure(with: dataItem)
      
 
              //      let collectionData = DataService.instance.godFatherActors[indexPath.item]
           //         cell.actorImage.image = UIImage(named: collectionData.imageName)
             //       cell.actorName.text = collectionData.name
        
//        let actor = mergedActors[indexPath.item]
//            cell.actorName.text = actor.name
//            cell.actorImage.image = UIImage(named: actor.imageName)
//            cell.backgroundColor = UIColor.lightGray
        let actor = actorSections[indexPath.section][indexPath.item]
               cell.configure(with: actor)
               
        
        
        
      return cell
    }
        
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCell", for: indexPath) as? ActorCell {
//                        let product = actors[indexPath.row]
//                        cell.updateViews(product: product)
//                        return cell
//                    }
//                    return ActorCell()
//            
////            let collectionData = DataService.instance.collectionDataArray[indexPath.item]
////            cell.actorImage.image = UIImage(named: collectionData.imageName)
////            cell.actorName.text = collectionData.name
////            
////            return cell
////            
////        }
////        return ActorCell()
//    }
}
