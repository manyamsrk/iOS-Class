//
//  MovieCollectionViewCell.swift
//  Manyam_Movies
//
//  Created by Student on 4/22/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var imageCollectionView: UIImageView!
    
    func assignMovies(with movie: Movie){
        imageCollectionView.image = movie.image
    }
    
}
