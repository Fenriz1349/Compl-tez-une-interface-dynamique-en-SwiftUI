//
//  Float+Extensions.swift
//  TajMahal
//
//  Created by Julien Cotte on 04/10/2024.
//

import Foundation

extension Float {
    func toEuroFormat () -> String {
        return String(format: "%.2f€", self).replacingOccurrences(of: ".", with: ",")
    }
}
