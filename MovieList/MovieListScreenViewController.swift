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
            image: UIImage(imageLiteralResourceName: "LOTR-I"),
            title: "Lord Of the Rings",
            releaseDate: "2001",
            description: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.",
            genre: "High fantasy/‎Adventure‎",
            runningTime: "2h58m"
        )
        
        let movie2 = Movie(
            image: UIImage(imageLiteralResourceName: "LOTR-II"),
            title: "Lord Of The Rings II",
            releaseDate: "2002",
            description: "While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron's new ally, Saruman, and his hordes of Isengard.",
            genre: "High fantasy/‎Adventure‎",
            runningTime: "2h59m"
        )
        
        let movie3 = Movie(
            image: UIImage(imageLiteralResourceName: "LOTR-III"),
            title: "Lord Of The Rings III",
            releaseDate: "2003",
            description: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.",
            genre: "High fantasy/‎Adventure‎",
            runningTime: "3h21m"
        )
        
        let movie4 = Movie(
            image: UIImage(imageLiteralResourceName: "Godfather"),
            title: "Godfather",
            releaseDate: "1972",
            description: "The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.",
            genre: "Crime/Drama",
            runningTime: "2h55m"
        )
        
        let movie5 = Movie(
            image: UIImage(imageLiteralResourceName: "Godfather II"),
            title: "Godfather II",
            releaseDate: "1974",
            description: "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.",
            genre: "Crime/Drama",
            runningTime: "3h22m"
        )
        
        let movie6 = Movie(
            image: UIImage(imageLiteralResourceName: "Godfather III"),
            title: "Godfather III",
            releaseDate: "1990",
            description: "In the final installment of the Godfather Trilogy, an aging Don Michael Corleone seeks to legitimize his crime family's interests and remove himself from the violent underworld but is kept back by the ambitions of the young.",
            genre: "Crime/Drama",
            runningTime: "2h42m"
        )
        
        tempMovies.append(movie1)
        tempMovies.append(movie2)
        tempMovies.append(movie3)
        tempMovies.append(movie4)
        tempMovies.append(movie5)
        tempMovies.append(movie6)
        
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
