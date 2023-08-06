//
//  ActorCell.swift
//  FanBase
//
//  Created by Maryna Bolotska on 04/08/23.
//

import UIKit


class ActorCell: UICollectionViewCell {

    @IBOutlet weak var actorImage: UIImageView!
    @IBOutlet weak var actorName: UILabel!
    
    
    func updateViews(product: Actor) {
        actorImage.image = UIImage(named: product.imageName)
        actorName.text = product.name
       
    }
    
    func configure(with actor: Actor) {
        actorImage.image = UIImage(named: actor.imageName)
        actorName.text = actor.name
       }
   
}
