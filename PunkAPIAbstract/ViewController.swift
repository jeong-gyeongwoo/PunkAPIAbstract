//
//  ViewController.swift
//  PunkAPIAbstract
//
//  Created by 정경우 on 2023/09/19.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Network.shared.request2(type: Beer.self, api: .beers) { B in
            print(B)
        }
        // Network.shared.request(api: .beers) { Beer in
        //print(Beer)
        //}
  
    }
    
}
