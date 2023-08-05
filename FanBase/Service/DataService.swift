//
//  DataService.swift
//  FanBase
//
//  Created by Maryna Bolotska on 04/08/23.
//

import UIKit


class DataService {
    static let instance = DataService()
    
   let movies = [
        Movie(title: "The GodFather"),
        Movie(title: "In The Mood for Love"),
        Movie(title: "Goodfellas")
        
    ]
    
    let godFatherActors = [
        Actor(name: "Al Pacino", imageName: "1.jpg"),
        Actor(name: "Marlon Brando", imageName: "2.jpg"),
        Actor(name: "James Caan", imageName: "3.jpg")
    ]
    
    
  
    
    let moodLoveActors = [
        Actor(name: "Maggie Cheung", imageName: "4.jpg"),
        Actor(name: "Tony Wa", imageName: "5.jpg"),
        Actor(name: "Joe Chung", imageName: "6.jpg")
        
       
    ]
    
    let goodfellasActors = [
        Actor(name: "Ray Liotta", imageName: "7.jpg"),
        Actor(name: "Robert de Niro", imageName: "8.jpg"),
        Actor(name: "Joe Pesci", imageName: "9.jpg")
       
    ]
    
    func getCategories() -> [Movie] {
        return movies
    }
    func getProducts(forCategoryTitle title:String) -> [Actor] {
        switch title {
        case "The GodFather":
            return godFatherActorsF()
        case "In The Mood for Love":
            return moodLoveActorsF()
        case "Goodfellas":
            return goodfellasActorsF()
        default:
            return moodLoveActorsF()
        }
    }
    
    func godFatherActorsF() -> [Actor] {
        return godFatherActors
    }
    
    func moodLoveActorsF() -> [Actor] {
        return moodLoveActors
    }
   
    func goodfellasActorsF() -> [Actor] {
        return goodfellasActors
    }
    
    
    let collectionDataArray: [Actor] = [
//            CollectionData(image: UIImage(named: "image1")!, title: "Image 1"),
//            CollectionData(image: UIImage(named: "image2")!, title: "Image 2"),
            Actor(name: "Aaaaaa", imageName: "7.jpg")
        ]
}
