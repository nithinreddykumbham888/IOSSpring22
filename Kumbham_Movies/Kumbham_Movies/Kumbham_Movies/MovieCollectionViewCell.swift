//
//  MovieCollectionViewCell.swift
//  Kumbham_Movies
//
//  Created by Kumbham,Nithin Reddy on 4/21/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    func assignMovie(with Movie: Movies){
        imageViewOutlet.image = Movie.image
    }
}
