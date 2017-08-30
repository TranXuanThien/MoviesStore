//
//  APIServiceProtocol.swift
//  Powdabox
//
//  Created by ThienTX on 01/02/17.
//  Copyright © 2016 ThienTX. All rights reserved.
//

import UIKit

protocol APIServiceProtocol {
    // get movies
    func getMovies(input: GetMoviesInput, completion: @escaping(_ result: GetMoviesResult) -> Void)
}
