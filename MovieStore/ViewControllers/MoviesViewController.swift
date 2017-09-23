//
//  ViewController.swift
//  MovieStore
//
//  Created by ThienTX on 6/12/17.
//  Copyright © 2017 ThienTX. All rights reserved.
//

import UIKit

class MoviesViewController: UIViewController {

    private var movieService: MovieServicceProtocol = MovieService()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        movieService.delegate = self
        movieService.getMovies(type: MovieType.popular, page: 1)
        
        movieService.getMovies(type: MovieType.popular, page: 2)
        movieService.getMovies(type: MovieType.popular, page: 51)
        movieService.getMovies(type: MovieType.popular, page: 61)
        movieService.getMovies(type: MovieType.popular, page: 71)
        movieService.getMovies(type: MovieType.popular, page: 81)

        movieService.getMovies(type: MovieType.popular, page: 3)
        print("acb")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getlist() {
        print("v1.0.0 is here")
    }
}

extension MoviesViewController: MovieServicceDelegate {
    func getMoviesSuccess(movies: [Movie]?) {
        print(movies)
    }
    
    func getMoviesFail(error: NSError?) {
        print(error)
    }
}

