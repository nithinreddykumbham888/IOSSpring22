//
//  MovieCollectionViewCell.swift
//  CollectionViewDemo1
//
//  Created by Kumbham,Nithin Reddy on 4/12/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    func assignMovie(with movie: Movie){
        imageViewOutlet.image = movie.image
    }
}
