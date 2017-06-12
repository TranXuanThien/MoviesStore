//
//  APIInputBase.swift
//  Powdabox
//
//  Created by ThienTX on 01/02/17.
//  Copyright © 2016 ThienTX. All rights reserved.
//

import UIKit
import Alamofire

class APIInputBase: NSObject {
    var url = ""
    
    var requestType = HTTPMethod.get
    var body: [String: Any]?
    var headers = ["Content-Type": "application/json; charset=utf-8"]

    var encoding: ParameterEncoding = URLEncoding.default
    
    func setup(url: String, requestType: HTTPMethod) {
        self.url = url
        self.requestType = requestType
    }
}
