//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation

// Cette enumération répertorie 3 niveaux de piment
enum SpiceLevel {
    case light
    case medium
    case hot
}

// Représente l'objet "plat", qui figure sur la carte du menu
struct Dish {
    let name: String
    let category: DishCategory
    let description: String
    let allergens: String
    let price : Float
    let ingredients: String
    let spiceLevel: SpiceLevel
    let imageName: ImageResource
}

enum DishCategory {
    case appetizer
    case mainCourse
}
