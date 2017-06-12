//
//  MoviesServicceProtocol.swift
//  MovieStore
//
//  Created by ThienTX on 6/12/17.
//  Copyright © 2017 ThienTX. All rights reserved.
//

import Foundation

protocol MovieServicceDelegate: class {
    func getMoviesSuccess(movies: [Movie]?)
    func getMoviesFail(error:NSError?)
}

protocol MovieServicceProtocol {
    weak var delegate: MovieServicceDelegate? { get set }
    func getMovies(type: MovieType, page: Int)
}
