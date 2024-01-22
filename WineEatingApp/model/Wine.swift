//
//  Wine.swift
//  WineEatingApp
//
//  Created by Justyna Warzecha on 12/01/2024.
//

import Foundation
import SwiftUI

struct Wine: Identifiable, Hashable {
    let id = UUID()
    let imageTitle: String
    let year: String
    let nom: String
    let cepage: String
    let color: String
    let provenance: String
    let flag: String
    let pays: String
    let degrees: String
    let metz: [PlatName]
    let gout: [String]
    let description: String
    var isFavorite: Bool
}

var arrayWine: [Wine] = [
    Wine(imageTitle: "wine1", year: "2017", nom: "Cabernet Sauvignon", cepage: "Cabernet Sauvignon", color: "red", provenance: "United States", flag: "🇺🇸", pays: "United States", degrees: "9", metz: [.beef, .cheese], gout: ["blackcurrant,","peppery"], description: "The 2017 Cabernet Sauvignon is a robust red wine from the United States. It presents aromas of blackcurrant and pepper, with a powerful structure on the palate. Perfect for pairing with red meat dishes and cheeses.", isFavorite: false),
        
        Wine(imageTitle: "w6", year: "2016", nom: "Chardonnay Reserve", cepage: "Chardonnay", color: "white", provenance: "Australia", flag: "🇦🇺", pays: "Australia", degrees: "8", metz: [.seafood, .poultry], gout: ["tropical fruit,", "vanilla"], description: "The 2016 Chardonnay Reserve from Australia is an elegant white wine. It features tropical fruit aromas, and a hint of vanilla. Perfect for pairing with seafood and poultry", isFavorite: false),

        Wine(imageTitle: "w6", year: "2020", nom: "Pinot Grigio", cepage: "Pinot Grigio", color: "white", provenance: "Italy", flag: "🇮🇹", pays: "Italy", degrees: "7", metz: [.pasta, .vegetarian], gout: ["lemon,", "mineral"], description: "The 2020 Italian Pinot Grigio is a fresh and mineral white wine. It exudes lemon aromas, a mineral sensation on the palate, and a delightful freshness. Perfect for pairing with pasta dishes and vegetarian meals.", isFavorite: false),
    Wine(imageTitle: "w6", year: "2020", nom: "Sauvignon Blanc", cepage: "Sauvignon Blanc", color: "white", provenance: "New Zealand", flag: "🇳🇿", pays: "New Zealand", degrees: "7", metz: [.fish, .lamb, .vegetarian], gout: ["citrousy,", "herbaceous"], description: "The 2020 Sauvignon Blanc is a lively and refreshing white wine from New Zealand. It features citrusy and herbaceous aromas, with a delightful freshness on the palate. Ideal for pairing with fish dishes and vegetarian meals.", isFavorite: false),
    Wine(imageTitle: "w3", year: "2019", nom: "Malbec Reserva", cepage: "Malbec", color: "red", provenance: "Argentina", flag: "🇦🇷", pays: "Argentina", degrees: "8", metz: [.beef, .poultry], gout: ["plum,", "dark chocolate"], description: "The 2019 Malbec Reserva from Argentina is a deep red wine with aromas of plum and dark chocolate. It features velvety tannins on the palate, making it perfect for pairing with red meats and game.", isFavorite: false),

        Wine(imageTitle: "w6", year: "2018", nom: "Riesling", cepage: "Riesling", color: "white", provenance: "Germany", flag: "🇩🇪", pays: "Germany", degrees: "7", metz: [.cheese], gout: ["peach,", "mineral,", "acidity"], description: "The 2018 German Riesling is a delicate white wine with peach aromas and a mineral note. It provides lively acidity, making it an excellent choice with spicy dishes and cheeses.", isFavorite: false),

    Wine(imageTitle: "w4", year: "2015", nom: "Syrah Reserve", cepage: "Syrah", color: "red", provenance: "South Africa", flag: "🇿🇦", pays: "South Africa", degrees: "10", metz: [.grilled, .beef, .poultry ], gout: ["blackberry,", "black peper"], description: "The 2015 Syrah Reserve from South Africa is a powerful red wine with aromas of blackberry and black pepper. It boasts a robust structure, making it an ideal companion for grilled meats and game.", isFavorite: false),
    Wine(imageTitle: "w3", year: "2019", nom: "Chianti Classico", cepage: "Sangiovese", color: "red", provenance: "Italy", flag: "🇮🇹", pays: "Italy", degrees: "13", metz: [.pizza, .poultry], gout: ["cherry,", "acidity"], description: "The 2019 Chianti Classico from Italy is a red wine with aromas of cherry and sun-dried tomato. It features robust tannins, making it an excellent choice to pair with pizza.", isFavorite: false),

    Wine(imageTitle: "wine1", year: "2020", nom: "Verdejo", cepage: "Verdejo", color: "white", provenance: "Spain", flag: "🇪🇸", pays: "Spain", degrees: "11", metz: [.rice, .pizza, .vegetarian], gout: ["lemon,", "fruity"], description: "The 2020 Verdejo from Spain is a fresh white wine with aromas of green apple and citrus. Its freshness on the palate makes it ideal for pairing with rice dishes.", isFavorite: false),
    Wine(imageTitle: "w2", year: "2021", nom: "Rosé Charm", cepage: "Grenache", color: "rosé", provenance: "France", flag: "🇫🇷", pays: "France", degrees: "9", metz: [.vegetarian, .seafood, .fish, .beef], gout: ["strawberry,", "crisp"], description: "The 2021 Rosé Charm from France is a delightful rosé wine with aromas of strawberry and a crisp palate. Perfect for pairing with salads and seafood.", isFavorite: false),

    Wine(imageTitle: "w5", year: "2022", nom: "Yellow Harmony", cepage: "Viognier", color: "yellow", provenance: "United States", flag: "🇺🇸", pays: "United States", degrees: "8", metz: [.grilled, .rice, .fish], gout: ["apricot,", "honeysuckle"], description: "The 2022 Yellow Harmony from the United States is a vibrant yellow wine with apricot aromas and a hint of honeysuckle. Ideal for pairing with spicy dishes and curry.", isFavorite: false)
]




