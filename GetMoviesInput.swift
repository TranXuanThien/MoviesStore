//
//  GetMoviesInput.swift
//  MovieStore
//
//  Created by ThienTX on 6/12/17.
//  Copyright © 2017 ThienTX. All rights reserved.
//

import Foundation

class GetMoviesInput: APIInputBase {
    var page: Int
    var type: String
    
    init(type: MovieType, page: Int) {
        self.page = page
        self.type = type.rawValue
        
        super.init()
        
        url = String(format: URLs.getMovies, type.rawValue, page)
        requestType = .get
    }
}
