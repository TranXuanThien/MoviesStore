//
//  GetMoviesResult.swift
//  MovieStore
//
//  Created by ThienTX on 6/12/17.
//  Copyright © 2017 ThienTX. All rights reserved.
//

import Foundation

enum GetMoviesResult {
    case success(movies: [Movie])
    case failure(error: NSError?)
}
