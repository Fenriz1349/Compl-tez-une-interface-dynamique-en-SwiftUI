//
//  String+Extensions.swift
//  TajMahal
//
//  Created by Julien Cotte on 27/09/2024.
//

import Foundation

extension String {
    // Methode pour mettre uniquement le premier char d'une string en majuscule, sauf en cas d'adresse web (commence par "www"
    func capitalizeFirstLetter() -> String {
        if self.hasPrefix("www") {
            return self
        }else {
            guard let firstLetter = self.first else { return self }
            return firstLetter.uppercased() + self.dropFirst()
        }
    }
}
