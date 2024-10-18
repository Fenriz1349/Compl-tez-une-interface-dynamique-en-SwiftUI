//
//  TextStyles.swift
//  TajMahal
//
//  Created by Julien Cotte on 27/09/2024.
//

import SwiftUI

// style modifier pour les titres principaux
struct MainTitleTextStyleModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 18))
            .foregroundStyle(.titleBlack)
            .fontWeight(.bold)
    }
}

// style modifier pour les titres
struct TitleTextStyleModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
            .foregroundStyle(.bodyBlack)
            .fontWeight(.semibold)
    }
}

// style modifier pour le corps de texte
struct BodyTextStyleModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .plusJakartaSans(size: 12)
            .foregroundStyle(.bodyBlack)
            .multilineTextAlignment(.leading)
    }
}

// style modifier pour le MenuButton
struct MenuButtonTextStyleModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 16))
            .foregroundStyle(.white)
            .fontWeight(.bold)
    }
}
