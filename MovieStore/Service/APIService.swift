//
//  APIService.swift
//  Powdabox
//
//  Created by ThienTX on 01/02/17.
//  Copyright © 2016 ThienTX. All rights reserved.
//

import UIKit
import Alamofire

class APIService: APIServiceProtocol {
    var alamoFireManager = SessionManager.default
    
    init() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForResource = 30
        configuration.timeoutIntervalForRequest = 30
        alamoFireManager = SessionManager(configuration: configuration)
    }
    
    func request(input: APIInputBase, completion: @escaping (_ value: Any?, _ error: Error?) -> Void) {
        print("\n------------REQUEST INPUT")
        print("link: \(input.url)")
        print("body: \(input.body)")
        print("------------ END REQUEST INPUT\n")
        
        let url = input.url
               
        alamoFireManager.request(url, method: input.requestType , parameters: input.body, encoding: input.encoding, headers: input.headers)
            .validate()
            .responseJSON { response in
            print("Data: \(response)")
            switch response.result {
            case .success:
                if response.response?.statusCode != 200 {
                    //handler json message_error
                }
                if let json = response.result.value as? [String:AnyObject] {
                    completion(json, nil)
                } else {
                    completion(nil, response.result.error)
                }
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
    
    func develop1() {
        print("nnnnn")
    }
}

extension APIService {
    func getMovies(input: GetMoviesInput, completion: @escaping (GetMoviesResult) -> Void) {
        request(input: input) { (value, error) in
            guard let json = value as? [String: Any] else {
                completion(GetMoviesResult.failure(error: error as NSError?))
                return
            }
            
            if let jsons = json["results"] as? [[String: AnyObject]] {
                var movies = [Movie]()
                for json in jsons {
                    if let movie = Movie(JSON: json) {
                        movies.append(movie)
                    }
                }
                completion(GetMoviesResult.success(movies: movies))
            } else if let error = error {
                completion(GetMoviesResult.failure(error: error as NSError?))
            } else {
                completion(GetMoviesResult.failure(error: nil))
            }
        }
    }
}
