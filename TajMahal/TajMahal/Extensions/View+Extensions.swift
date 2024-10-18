//
//  View+Extensions.swift
//  TajMahal
//
//  Created by Julien Cotte on 11/10/2024.
//

import SwiftUI

struct PlusJakartaSansModifier: ViewModifier {
    var size: CGFloat
    var weight: Font.Weight

    func body(content: Content) -> some View {
        content.font(Font.plusJakartaSans(size: size, weight: weight))
            .fontWeight(weight == .black ? .black : weight == .bold ? .bold : .regular)
    }
}

extension View {
    
    // Fonction pour appliquer un TextModifier
    func CustomNavigationTitle(_ title: String) -> some View {
        self.modifier(CustomNavigationTitleModifier(title: title))
    }
    
    func mainTitleTextStyle() -> some View {
        self.modifier(MainTitleTextStyleModifier())
    }
    
    func titleTextStyle() -> some View {
        self.modifier(TitleTextStyleModifier())
    }
    
    func bodyTextStyle() -> some View {
        self.modifier(BodyTextStyleModifier())
    }
    
    func menuButtonStyle() -> some View {
        self.modifier(MenuButtonTextStyleModifier())
    }
    
    func plusJakartaSans(size: CGFloat, weight: Font.Weight = .regular) -> some View {
        self.modifier(PlusJakartaSansModifier(size: size, weight: weight))
    }
}
