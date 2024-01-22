//
//  CardPlateType.swift
//  WineEatingApp
//
//  Created by Justyna Warzecha on 12/01/2024.
//

import Foundation

enum PlatName: String, CaseIterable {
    case beef = "Beef"
    case lamb = "Lamb"
    case fish = "Fish"
    case cheese = "Cheese"
    case poultry = "Poultry"
    case seafood = "Seafood"
    case pasta = "Pasta"
    case pizza = "Pizza"
    case rice = "Rice"
    case grilled = "Grilled"
    case vegetarian = "Vegetarian"
    
}


struct Plat: Identifiable {
    let id = UUID()
    let titre: PlatName
    let image: String
}

var arrayPlats: [Plat] = [
    Plat(titre: PlatName.beef, image: "beef"),
    Plat(titre: PlatName.lamb, image: "lamb"),
    Plat(titre: PlatName.fish, image: "fish"),
    Plat(titre: PlatName.vegetarian, image: "vegetarian"),
    Plat(titre: PlatName.cheese, image: "cheese"),
    Plat(titre: PlatName.poultry, image: "poultry"),
    Plat(titre: PlatName.seafood, image: "seafood"),
    Plat(titre: PlatName.pasta, image: "pasta"),
    Plat(titre: PlatName.pizza, image: "pizza"),
    Plat(titre: PlatName.rice, image: "rice"),
    Plat(titre: PlatName.grilled, image: "grilled")
]
