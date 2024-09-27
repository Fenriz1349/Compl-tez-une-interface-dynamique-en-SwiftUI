//
//  String+Extensions.swift
//  TajMahal
//
//  Created by Julien Cotte on 27/09/2024.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        guard let firstLetter = self.first else { return self } 
        return firstLetter.uppercased() + self.dropFirst()
    }
}
