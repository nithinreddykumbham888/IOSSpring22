//
//  ViewController.swift
//  Kumbham_Movies
//
//  Created by Kumbham,Nithin Reddy on 4/21/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        moviesArray1.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = moviesArray1[indexPath.row].category
        return cell
    }

    
    
    @IBOutlet weak var genreTableView: UITableView!
    
    
    var moviesArray1 = moviesArray
    var selectedRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genreTableView.delegate = self
        genreTableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "movieSegue"{
            let destination = segue.destination as! MoviesViewController
            destination.moviesArray2 = moviesArray1[(genreTableView.indexPathForSelectedRow?.row)!].movies
            destination.title1 = moviesArray1[(genreTableView.indexPathForSelectedRow?.row)!].category
        }
    }


}

