//
//  Car.swift
//  Cars
//
//  Created by Usuário Convidado on 27/03/17.
//  Copyright © 2017 Kako Botasso. All rights reserved.
//

import Foundation

enum GasType: Int {
    case flex
    case alcohol
    case gasoline
}

class Car {
    var brand: String
    var name: String
    var price: Double
    var gasType: GasType
    var id: String?
    
    init(brand: String, name: String, price: Double, gasType: GasType) {
        self.brand = brand
        self.name = name
        self.price = price
        self.gasType = gasType
    }
}
