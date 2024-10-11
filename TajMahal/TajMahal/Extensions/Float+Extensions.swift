//
//  Float+Extensions.swift
//  TajMahal
//
//  Created by Julien Cotte on 04/10/2024.
//

import Foundation

extension Float {
    // Methode pour convertir un float en nombre à 2 virgules, changer le point en virgule et ajouter le symbole euro derrière
    func toEuroFormat () -> String {
        return String(format: "%.2f€", self).replacingOccurrences(of: ".", with: ",")
    }
}
