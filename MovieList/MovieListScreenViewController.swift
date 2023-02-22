//
//  MovieListScreenViewController.swift
//  MovieList
//
//  Created by Jonathan Marcelo Peres on 21/02/23.
//

import UIKit

class MovieListScreenViewController: UIViewController {
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        movies = createArray()
    }
    
    func createArray() -> [Movie] {
        var tempMovies: [Movie] = []
        
        let movie1 = Movie(image: UIImage(imageLiteralResourceName: "Godfather"), title: "Godfather", description: "Description")
        let movie2 = Movie(image: UIImage(imageLiteralResourceName: "Godfather II"), title: "Godfather II", description: "Description")
        let movie3 = Movie(image: UIImage(imageLiteralResourceName: "Godfather III"), title: "Godfather III", description: "Description")
        
        tempMovies.append(movie1)
        tempMovies.append(movie2)
        tempMovies.append(movie3)
        
        return tempMovies
    }
}
