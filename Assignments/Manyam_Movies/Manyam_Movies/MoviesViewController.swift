//
//  MoviesViewController.swift
//  Manyam_Movies
//
//  Created by Student on 4/22/22.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (mlists?.movies.count)!
    }

    var mlists : Genre?
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        cell.assignMovies(with: (mlists?.movies[indexPath.row])!)
        return cell
    }
    
    let genresArr = genres
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        movieNameLabel.text = "Movie Title: \(mlists!.movies[indexPath.row].title)"
        movieRatingLabel.text = "Movie Rating: \(mlists!.movies[indexPath.row].movieRating)"
        movieBoxOfficeLabel.text = "Movie BoxOffice: \(mlists!.movies[indexPath.row].boxOffice)"
        movieYearLabel.text = "Movie Relase Year: \(mlists!.movies[indexPath.row].releasedYear)"
        moviePlotLabel.text = "Movie Plot: \(mlists!.movies[indexPath.row].moviePlot)"
        movieCastLabel.text = "Movie Cast: \(mlists!.movies[indexPath.row].cast)"
        
    }
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    

    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    @IBOutlet weak var moviePlotLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        self.title = mlists?.category
        movieNameLabel.text = "Movie Title: \(mlists!.movies[0].title)"
        movieRatingLabel.text = "Movie Rating: \(mlists!.movies[0].movieRating)"
        movieBoxOfficeLabel.text = "Movie BoxOffice: \(mlists!.movies[0].boxOffice)"
        movieYearLabel.text = "Movie Relase Year: \(mlists!.movies[0].releasedYear)"
        moviePlotLabel.text = "Movie Plot: \(mlists!.movies[0].moviePlot)"
        movieCastLabel.text = "Movie Cast: \(mlists!.movies[0].cast)"
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
