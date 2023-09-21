//
//  PunkAPI.swift
//  PunkAPIAbstract
//
//  Created by 정경우 on 2023/09/19.
//

import Foundation
import Alamofire

enum GetBeer: URLRequestConvertible {
    
    case beers
    case single(id: String)
    case random
    
    private  var baseURL: URL {
        return URL(string: "https://api.punkapi.com/v2/beers")!
    }
    
    private  var path: String {
        switch self {
        case .beers:
            return ""
        case .single(let id):
            return "/\(id)"
        case .random:
            return "/random"
        }
    }
    private   var method: HTTPMethod {
        return .get
    }
    
    
    func asURLRequest() throws -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        var request = URLRequest(url: url)
        request.method = method
        //print(request)
        return request
    }
}


