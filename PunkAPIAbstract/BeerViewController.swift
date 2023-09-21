//
//  ViewController.swift
//  PunkAPIAbstract
//
//  Created by 정경우 on 2023/09/19.
//

import UIKit
import SnapKit
import Kingfisher

class BeerViewController: UIViewController {
    
    var beerImageView = UIImageView()
    let beerName = UILabel()
    let foodPairing = UILabel()
    
    let viewModel = BeerViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        constraints()
        viewModel.fetchBeerList {value in
            if let imageURL = URL(string: "\(value.imageURL)") {
                self.beerImageView.kf.setImage(with: imageURL)
            }
            self.beerName.text = value.name
            self.foodPairing.text = value.foodPairing.joined(separator: ", ")
        }
        
    }
    
    func configure() {
        view.backgroundColor = .white
        view.addSubview(beerImageView)
        view.addSubview(beerName)
        view.addSubview(foodPairing)
        
    }
    
    
    func constraints() {
        beerImageView.snp.makeConstraints { make in
            make.top.centerX.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(300)
            make.width.equalTo(200)
        }
        
        beerName.snp.makeConstraints { make in
            make.top.equalTo(beerImageView.snp.bottom).offset(20)
            make.width.equalTo(view)
            make.centerX.equalToSuperview()
        }
        
        foodPairing.numberOfLines = 0
        foodPairing.snp.makeConstraints { make in
            make.top.equalTo(beerName.snp.bottom).offset(20)
            make.width.equalTo(view)
            make.centerX.equalToSuperview()
        }
    }
    
    
    
    
    
    
}



