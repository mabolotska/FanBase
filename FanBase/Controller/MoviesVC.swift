//
//  ViewController.swift
//  FanBase
//
//  Created by Maryna Bolotska on 04/08/23.
//

import UIKit

class MoviesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var moviesTableView: UITableView!
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
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
          cell.movieCollectionView.tag = indexPath.section // Set the tag to identify the section
          return cell
      }
}

