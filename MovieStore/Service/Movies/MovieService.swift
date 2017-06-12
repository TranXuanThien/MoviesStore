//
//  MoviesService.swift
//  MovieStore
//
//  Created by ThienTX on 6/12/17.
//  Copyright © 2017 ThienTX. All rights reserved.
//

import Foundation

class MovieService: MovieServicceProtocol {
    let apiService = APIService()
    weak var delegate: MovieServicceDelegate?
    
    // get list
    func getMovies(type: MovieType, page: Int) {
        apiService.getMovies(input: GetMoviesInput(type: type, page: page)) { [weak self](result) in
            switch result {
            case .success(let movies):
                self?.delegate?.getMoviesSuccess(movies: movies)
            case .failure(let error):
                print(error)
                self?.delegate?.getMoviesFail(error: error)
            }
        }
    }
}
