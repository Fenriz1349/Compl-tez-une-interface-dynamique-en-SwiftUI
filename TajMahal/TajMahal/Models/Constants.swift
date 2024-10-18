//
//  Constants.swift
//  TajMahal
//
//  Created by Julien Cotte on 27/09/2024.
//

import Foundation


// Struct des contenus de l'écran d'acceuil
struct WelcomeContent {
    let content: String
    // Header de l'écran d'acceuil
    static let restaurantType = WelcomeContent(content: "restaurant indien")
    static let restaurantName = WelcomeContent(content: "taj mahal")
    
    // Contenu des lignes de l'écran d'acceuil
    static let day = WelcomeContent(content: getDayInString(of: Date()))
    static let schedule = WelcomeContent(content: getScheduleOfDay(Date()))
    static let serviceTypeCategory = WelcomeContent(content: "Types de Service")
    static let serviceTypeName = WelcomeContent(content: "à emporter")
    static let location = WelcomeContent(content: "12 avenue de la Brique - 75010 Paris")
    static let website = WelcomeContent(content: "www.tajmahal.fr")
    static let phoneNumber = WelcomeContent(content: "06 12 34 56 78")
    
}
