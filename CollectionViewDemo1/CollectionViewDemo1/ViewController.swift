//
//  ViewController.swift
//  CollectionViewDemo1
//
//  Created by Kumbham,Nithin Reddy on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movie", for: indexPath) as! MovieCollectionViewCell
        cell.assignMovie(with: movies[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(index: indexPath)
    }
    
    func assignMovieDetails(index: IndexPath){
        titleOutlet.text = "Movie Title : \(movies[index.row].title)"
        yearReleased.text = "Year Released : \(movies[index.row].releasedYear)"
        rating.text = "Rating : \(movies[index.row].movieRating)"
        boxOffice.text = "Box Office : \(movies[index.row].boxOffice)"
    }
    

    @IBOutlet weak var CollectionViewOutlet: UICollectionView!
    
    @IBOutlet weak var titleOutlet: UILabel!
    
    @IBOutlet weak var yearReleased: UILabel!
    
    
    @IBOutlet weak var rating: UILabel!
    
    
    @IBOutlet weak var boxOffice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CollectionViewOutlet.delegate = self
        CollectionViewOutlet.dataSource = self
    }


}

