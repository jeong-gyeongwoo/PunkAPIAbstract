//
//  PunkAPI.swift
//  PunkAPIAbstract
//
//  Created by 정경우 on 2023/09/19.
//

import Foundation
import Alamofire

enum GetBeer {
    
    case beers
    case single(id: String)
    case random
    
    private var baseURL: String {
        return "https://api.punkapi.com/v2/beers"
    }
    
    var endpoint: URL {
        switch self {
        case .beers:
            return URL(string: baseURL)!
        case .single(let id):
            return URL(string: baseURL + "/\(id)")!
        case .random:
            return URL(string: baseURL + "/random")!
            
        }
    }
    var method: HTTPMethod {
        return .get
    }
    
}

/*
 get beers
 https://api.punkapi.com/v2/beers
 get a single beer
 https://api.punkapi.com/v2/beers/1
 get random beer
 https://api.punkapi.com/v2/beers/random
 PunkAPI, 네트워크 구조 추상화
 */
