//
//  ViewModel.swift
//  TajMahal
//
//  Created by Amandine Cousin on 07/11/2023.
//

import Foundation

// Strcture qui gère toute la logique du code
// Fait l'intermédiaire entre l'affichage et les données

enum Menu : CaseIterable {
    case samosas, pakoras, aloo, tikkaMasala ,biryani, roganJosh
    
    var dish: Dish {
        switch self {
        // Stocke les entrées qui composent le menu du restaurant
        case .samosas : Dish(name: "Samosas aux légumes", category: .appetizer, description: "Délicieux chaussons frits garnis de légumes épicés", allergens: "Farine de blé", price: 5, ingredients: "Mélange de légumes (pommes de terre, petits pois, carottes), épices indiennes, pâte à samosa, huile", spiceLevel: .light, imageName: .samosas)
        case .pakoras : Dish(name: "Pakoras", category: .appetizer, description: "Beignets de légumes enrobés de pâte épicée et frits", allergens: "Sans allergènes majeurs", price:5,ingredients: "Légumes assortis (aubergines, oignons, épinards), farine de pois chiches, épices, huile", spiceLevel: .medium, imageName: .pakoras)
        case .aloo : Dish(name: "Aloo Tikki", category: .appetizer, description: "Galettes de pommes de terre épicées et croustillantes", allergens: "Sans allergènes majeurs", price: 5.5, ingredients: "Pommes de terre, épices, farine de pois chiches", spiceLevel: .medium, imageName: .aloo)
        // Stocke les plats principaux qui composent le menu du restaurant
        case .tikkaMasala: Dish(name: "Chicken Tikka Masala", category:.mainCourse, description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", price: 13, ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: .tikkaMasala)
        case .biryani : Dish(name: "Biryani aux légumes", category:.mainCourse, description: "Riz parfumé cuit avec des légumes et des épices", allergens: "Noix de cajou, riz",price: 10.5, ingredients: "Riz basmati, légumes assortis (carottes, petits pois, haricots verts), noix de cajou, raisins secs, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre", spiceLevel: .medium, imageName: .biryani)
        case .roganJosh : Dish(name: "Rogan Josh", category:.mainCourse, description: "Agneau mijoté dans une sauce épicée", allergens: "Ail, oignon", price: 13, ingredients: "Agneau, oignons, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, huile, coriandre fraîche", spiceLevel: .hot, imageName: .roganJosh)
        }
    }
    
    // var static pour acceder plus facilement au elements
    static var allDishes: [Dish] {
        return Menu.allCases.map { $0.dish }
    }
    
    static func allDishOfCategory(of category: DishCategory) -> [Dish] {
        return Menu.allCases.filter { $0.dish.category == category }.map{ $0.dish }
    }
}
