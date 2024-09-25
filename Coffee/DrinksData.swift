//
//  DrinksData.swift
//  Coffee
//
//  Created by Кирилл Сысоев on 8.09.24.
//

import Foundation

struct DrinksData {
    static let drinks : [Drink] = [
        Drink(name: "Cappuccino", description: "Espresso-based coffee with the addition of warmed foamed milk", image: "Cappuccino", price: 180.0, category: .coffee),
        Drink(name: "Espresso", description: "", image: "Espresso", price: 180.0, category: .coffee),
        Drink(name: "Latte", description: "", image: "Latte", price: 180.0, category: .coffee),
        Drink(name: "Raff", description: "", image: "Raff", price: 180.0, category: .coffee),
        Drink(name: "Black tee", description: "", image: "B tee", price: 150.0, category: .tea),
        Drink(name: "Green tee", description: "", image: "G tee", price: 150.0, category: .tea),
        Drink(name: "Red tee", description: "", image: "R tee", price: 150.0, category: .tea),
        Drink(name: "Chamomile tee", description: "", image: "C tee", price: 150.0, category: .tea),
        Drink(name: "Coca-Cola", description: "", image: "Cola", price: 120.0, category: .drinks),
        Drink(name: "Sprite", description: "", image: "Sprite", price: 120.0, category: .drinks),
        Drink(name: "Fanta", description: "", image: "Fanta", price: 120.0, category: .drinks),
        Drink(name: "MezzoMix", description: "", image: "Mezzo", price: 120.0, category: .drinks),
        Drink(name: "Cinnabon", description: "", image: "Cinnabon", price: 150.0, category: .desserts),
        Drink(name: "Cheesecake", description: "", image: "Cheesecake", price: 150.0, category: .desserts),
        Drink(name: "Browny", description: "", image: "Browny", price: 150.0, category: .desserts),
        Drink(name: "Donut", description: "", image: "Donut", price: 150.0, category: .desserts)
    ]
}
