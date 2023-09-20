//
//  BeerModel.swift
//  PunkAPIAbstract
//
//  Created by 정경우 on 2023/09/20.
//

import Foundation



struct BeerElement: Decodable {
    let id: Int
    let name: String
    let imageURL: String
    let foodPairing: [String]?

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "image_url"
        case foodPairing = "food_pairing"
        }
}

typealias Beer = [BeerElement]
