//
//  Functions.swift
//  TajMahal
//
//  Created by Julien Cotte on 27/09/2024.
//

import Foundation

// Fonction pour recuperer les horaires du jour présent
func getScheduleOfDay(_ day: Date) -> String {
    
    let dayString = getDayInString(of: day)
    
    switch dayString {
    case "lundi" :
        return "11h30 - 14h30 · 18h30 - 22h00"
    case "mardi" :
        return "11h30 - 14h30 · 18h30 - 22h00"
    case "mercredi" :
        return "11h30 - 14h30 · 18h30 - 22h00"
    case "jeudi" :
        return "11h30 - 14h30 · 18h30 - 22h00"
    case "vendredi" :
        return "11h30 - 14h30 · 18h30 - 23h00"
    case "samedi":
        return "11h30 - 23h00"
    case "dimanche" :
        return "fermé"
    default : return "jour invalide"
    }
}

// Fonction pour renvoyer une String en français d'un jour
func getDayInString(of day: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "fr_FR")
    dateFormatter.dateFormat = "EEEE"
    return dateFormatter.string(from: day)
}
