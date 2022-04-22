//
//  MoviesViewController.swift
//  Kumbham_Movies
//
//  Created by Kumbham,Nithin Reddy on 4/21/22.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moviesArray2.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        
        cell.assignMovie(with: moviesArray2[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(index: indexPath.row)
    }
    
    func assignMovieDetails(index: Int){
        movieNameLabel.text = "Movie Name : \(moviesArray2[index].title)"
        movieRatingLabel.text = "Movie Rating : \(moviesArray2[index].movierating)"
        movieBoxOfficeLabel.text = "Box Office Collection : \(moviesArray2[index].boxOffice)"
        movieYearLabel.text = "Movie Released Year : \(moviesArray2[index].releasedYear)"
        moviePlotLabel.text = "Movie Plot : \(moviesArray2[index].moviePlot)"
        movieCastLabel.text = "Cast :\n"
        for cast1 in (moviesArray2[index].cast){
        movieCastLabel.text! += "\(cast1),"
        }
    }

    
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    
    var moviesArray2 : [Movies] = []
    var title1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        self.title = title1
        assignMovieDetails(index: 0)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
