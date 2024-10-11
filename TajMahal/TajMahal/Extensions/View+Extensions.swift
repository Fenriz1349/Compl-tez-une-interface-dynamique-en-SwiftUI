//
//  View+Extensions.swift
//  TajMahal
//
//  Created by Julien Cotte on 11/10/2024.
//

import SwiftUI

extension View {
    func CustomNavigationTitle(_ title: String) -> some View {
        self.modifier(CustomNavigationTitleModifier(title: title))
    }
}
