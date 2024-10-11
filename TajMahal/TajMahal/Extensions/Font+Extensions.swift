//
//  Font+Extensions.swift
//  TajMahal
//
//  Created by Julien Cotte on 11/10/2024.
//

import SwiftUI

extension Font {
    static func plusJakartaSans(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        switch weight {
        case .black :
            return Font.custom("PlusJakartaSans-ExtraBold", size: size)
        case .bold :
            return Font.custom("PlusJakartaSans-Bold", size: size)
        default :
            return Font.custom("PlusJakartaSans-Regular", size: size)
        }
    }
}
