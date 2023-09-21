//
//  BeerViewModel.swift
//  PunkAPIAbstract
//
//  Created by 정경우 on 2023/09/20.
//

import Foundation
import Alamofire

class BeerViewModel {
    
   // var beerList: BeerElement = BeerElement(id: 0, name: "", imageURL: "", foodPairing: [])
  //  lazy var url = URL(string: "\(beerList.imageURL)")
    
    
    func fetchBeerList(completion: @escaping (BeerElement) -> Void ) {
        print(#function)
        BeerAPI.shared.request2(type: Beer.self, api: .random) { data in
//                self.beerList = list
//                    //self.beerList = data[0]
//                    //print(self.beerList, "리스트에 담겼음")
                    completion(data[0])
            }
        }
    }
  

