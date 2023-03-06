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
    @IBOutlet weak var labelReleaseDateMovieCell: UILabel!
    @IBOutlet weak var labelDescriptionMovieCell: UILabel!
    @IBOutlet weak var labelGenreMovieCell: UILabel!
    @IBOutlet weak var labelRunningTimeMovieCell: UILabel!
    
    func setMovie(movie: Movie) {
        imageViewMovieCell.image = movie.image
        labelTitleMovieCell.text = movie.title
        labelReleaseDateMovieCell.text = movie.releaseDate
        labelDescriptionMovieCell.text = movie.description
        labelGenreMovieCell.text = movie.genre
        labelRunningTimeMovieCell.text = movie.runningTime
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true

        contentView.frame = contentView.frame.inset(
            by: UIEdgeInsets(
                top: 4, left: 8, bottom: 4, right: 8
            )
        )
    }
}
