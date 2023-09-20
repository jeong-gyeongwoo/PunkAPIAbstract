//
//  Network.swift
//  PunkAPIAbstract
//
//  Created by 정경우 on 2023/09/19.
//

import Foundation
import Alamofire

class Network {
    
    static let shared = Network()
    
    private init() {}
    
//    func request(api: GetBeer, completion: @escaping(Beer) -> ()) {
//        AF.request(api.endpoint, method: api.method).validate(statusCode: 200...500).responseDecodable(of: Beer.self) { response in
//            switch response.result {
//            case .success(let value):
//                completion(value)
//            case .failure(let error):
//                print(error)
//            }
//        }
//
//    }
    
    func request2<T:Decodable>(type: T.Type, api: GetBeer, completion: @escaping(T) -> ()) {
        AF.request(api.endpoint, method: api.method).validate(statusCode: 200...500).responseDecodable(of: T.self) { response in
            switch response.result {
            case .success(let value):
                completion(value)
            case .failure(let error):
                print(error)
            }
        }

    }
    
}
