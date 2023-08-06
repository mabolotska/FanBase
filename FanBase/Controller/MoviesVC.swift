//
//  ViewController.swift
//  FanBase
//
//  Created by Maryna Bolotska on 04/08/23.
//

import UIKit

class MoviesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var moviesTableView: UITableView!
    var actors: [Actor] = [] {
            didSet {
                moviesTableView.reloadData()
            }
        }
    var actorsData: [[Actor]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
        
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

                actorsData = [goodfellasActors, otherMovieActors]
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataService.instance.movies.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            // Return the title for each section from the array
            if section < DataService.instance.movies.count {
                return DataService.instance.movies[section].title
            }
            return nil
        }

 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
    
        
        cell.movieCollectionView.tag = indexPath.section
          return cell
      }
}

