//
//  DrinksData.swift
//  Coffee
//
//  Created by Кирилл Сысоев on 8.09.24.
//

import Foundation

struct DrinksData {
    static let coffee : [Drink] = [
        Drink(name: "Cappuccino", description: "Espresso-based coffee with the addition of warmed foamed milk", image: "Cappuccino", price: 180.0, category: .coffee),
        Drink(name: "Espresso", description: "", image: "Espresso", price: 180.0, category: .coffee),
        Drink(name: "Latte", description: "", image: "Latte", price: 180.0, category: .coffee),
        Drink(name: "Cacao", description: "", image: "Cacao", price: 180.0, category: .coffee)
    ]
    
    static let tea : [Drink] = [
        Drink(name: "Black tea", description: "", image: "B tea", price: 150.0, category: .tea),
        Drink(name: "Green tea", description: "", image: "G tea", price: 150.0, category: .tea),
        Drink(name: "Red tea", description: "", image: "R tea", price: 150.0, category: .tea),
        Drink(name: "Chamomile tea", description: "", image: "C tea", price: 150.0, category: .tea)
    ]
    
    static let coldDrinks : [Drink] = [
        Drink(name: "Coca-Cola", description: "", image: "Cola", price: 120.0, category: .drinks),
        Drink(name: "Sprite", description: "", image: "Sprite", price: 120.0, category: .drinks),
        Drink(name: "Fanta", description: "", image: "Fanta", price: 120.0, category: .drinks),
        Drink(name: "MezzoMix", description: "", image: "Mezzo", price: 120.0, category: .drinks)
    ]
    
    static let deserts : [Drink] = [
        Drink(name: "Cookies", description: "", image: "Cookies", price: 150.0, category: .desserts),
        Drink(name: "Cheesecake", description: "", image: "Cheesecake", price: 150.0, category: .desserts),
        Drink(name: "Chocolate Browny", description: "", image: "C browny", price: 150.0, category: .desserts),
        Drink(name: "Vanila Browny", description: "", image: "V browny", price: 150.0, category: .desserts),
        Drink(name: "Croissant", description: "", image: "Croissant", price: 150.0, category: .desserts),
        Drink(name: "Choco cake", description: "", image: "Cake", price: 150.0, category: .desserts)
    ]
        
}
