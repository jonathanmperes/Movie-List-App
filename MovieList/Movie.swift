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
    var description: String
    var genre: String
    
    init(image: UIImage, title: String, description: String, genre: String) {
        self.image = image
        self.title = title
        self.description = description
        self.genre = genre
    }
}
