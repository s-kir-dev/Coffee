//
//  Drink.swift
//  Coffee
//
//  Created by Кирилл Сысоев on 8.09.24.
//

import Foundation

enum Category : String, Codable {
    case coffee, tea, drinks, desserts
}

enum Volume : Int, Codable {
    case small = 200 , middle = 300 , large = 400
}

struct Drink : Codable {
    let name : String
    let description : String
    let image : String
    let price : Double
    let category : Category
}
