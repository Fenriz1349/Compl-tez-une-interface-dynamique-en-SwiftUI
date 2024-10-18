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
    // Pour acceder directement aux images des assets
    let imageName: ImageResource
}

// Enum pour les catégories de plats, String pour recuperer le nom, CaseIterable pour pouvoir l'utiliser comme un liste
enum DishCategory: String, CaseIterable {
    case appetizer = "Entrées"
    case mainCourse = "Plats Principaux"
}
