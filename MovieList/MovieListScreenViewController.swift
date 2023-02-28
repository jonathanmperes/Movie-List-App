//
//  MovieListScreenViewController.swift
//  MovieList
//
//  Created by Jonathan Marcelo Peres on 21/02/23.
//

import UIKit

class MovieListScreenViewController: UIViewController {
    
    var movies: [Movie] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movies = createArray()
        registerNib()
    }
    
    func registerNib() {
        let nib = UINib(nibName: "TableViewMovieCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TableViewMovieCell")
    }
    
    func createArray() -> [Movie] {
        
        var tempMovies: [Movie] = []
        
        let movie1 = Movie(
            image: UIImage(imageLiteralResourceName: "Godfather"),
            title: "Godfather",
            description: "The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son."
        )
        let movie2 = Movie(
            image: UIImage(imageLiteralResourceName: "Godfather II"),
            title: "Godfather II",
            description: "Description"
        )
        let movie3 = Movie(
            image: UIImage(imageLiteralResourceName: "Godfather III"),
            title: "Godfather III",
            description: "Description"
        )
        
        tempMovies.append(movie1)
        tempMovies.append(movie2)
        tempMovies.append(movie3)
        
        return tempMovies
    }
}

extension MovieListScreenViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movies[indexPath.row]
        
        let cell = tableView
            .dequeueReusableCell(withIdentifier: "TableViewMovieCell") as! TableViewMovieCell
        cell.setMovie(movie: movie)
        
        return cell
    }
}
