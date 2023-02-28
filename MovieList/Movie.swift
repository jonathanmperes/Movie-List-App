//
//  Movie.swift
//  MovieList
//
//  Created by Jonathan Marcelo Peres on 21/02/23.
//

import Foundation
import UIKit

class Movie {
    
    var image: UIImage
    var title: String
    var releaseDate: String
    var description: String
    var genre: String
    var runningTime: String
    
    init(
        image: UIImage,
        title: String,
        releaseDate: String,
        description: String,
        genre: String,
        runningTime: String
    ) {
        self.image = image
        self.title = title
        self.releaseDate = releaseDate
        self.description = description
        self.genre = genre
        self.runningTime = runningTime
    }
}
