//
//  TableViewMovieCell.swift
//  MovieList
//
//  Created by Jonathan Marcelo Peres on 24/02/23.
//

import UIKit

class TableViewMovieCell: UITableViewCell {
    
    @IBOutlet weak var imageViewMovieCell: UIImageView!
    @IBOutlet weak var labelTitleMovieCell: UILabel!
    @IBOutlet weak var labelDescriptionMovieCell: UILabel!
    
    func setMovie(movie: Movie) {
        imageViewMovieCell.image = movie.image
        labelTitleMovieCell.text = movie.title
        labelDescriptionMovieCell.text = movie.description
    }
}
