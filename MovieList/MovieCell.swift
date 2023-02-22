//
//  MovieCell.swift
//  MovieList
//
//  Created by Jonathan Marcelo Peres on 21/02/23.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    
    func setMovie(movie: Movie) {
        movieImageView.image = movie.image
        movieTitleLabel.text = movie.title
        movieDescriptionLabel.text = movie.description
    }
}
