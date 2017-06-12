//
//  APIUrls.swift
//  MovieStore
//
//  Created by ThienTX on 6/12/17.
//  Copyright © 2017 ThienTX. All rights reserved.
//

struct URLs {
    static let baseUrl = "https://api.themoviedb.org/3"
    static let apiKey = "e7631ffcb8e766993e5ec0c1f4245f93"
    static let baseImageUrl = "https://image.tmdb.org/t/p/w154"
    
    // get movies
    static let getMovies = baseUrl + "/movie/%@?api_key=\(apiKey)&page=%d"
}
