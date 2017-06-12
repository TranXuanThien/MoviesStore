//
//  Movie.swift
//  MovieStore
//
//  Created by ThienTX on 6/12/17.
//  Copyright © 2017 ThienTX. All rights reserved.
//

import Foundation
import ObjectMapper

class Movie: Mappable {
    var vote_count = 0
    var id = 0
    var video = false
    var vote_average = 0.0
    var title = ""
    var popularity = 0.0
    var poster_path = ""
    var original_language = ""
    var original_title = ""
    var genre_ids = [Int]()
    var backdrop_path = ""
    var adult = false
    var overview = ""
    var release_date = ""
    
    init() {
        
    }
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        vote_count <- map["vote_count"]
        id <- map["id"]
        video <- map["video"]
        vote_average <- map["vote_average"]
        title <- map["title"]
        popularity <- map["popularity"]
        poster_path <- map["poster_path"]
        original_language <- map["original_language"]
        original_title <- map["original_title"]
        genre_ids <- map["genre_ids"]
        backdrop_path <- map["backdrop_path"]
        adult <- map["adult"]
        overview <- map["overview"]
        release_date <- map["release_date"]
    }
}

enum MovieType: String {
    case popular
    case top_rated
    case now_playing
    case upcoming
}

