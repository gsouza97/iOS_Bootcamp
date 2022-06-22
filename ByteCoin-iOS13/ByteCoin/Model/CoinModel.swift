//
//  CoinModel.swift
//  ByteCoin
//
//  Created by Gabriel Souza on 22/06/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let price: Double
    let currency: String
    
    var priceString: String {
        return String(format: "%.2f", price)
    }
    
}
