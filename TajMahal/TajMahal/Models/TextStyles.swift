//
//  TextStyles.swift
//  TajMahal
//
//  Created by Julien Cotte on 27/09/2024.
//

import SwiftUI

// style modifier for Main Title
struct MainTitleTextStyleModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 18))
            .foregroundStyle(.titleBlack)
            .fontWeight(.semibold)
    }
}

// style modifier for Title
struct TitleTextStyleModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
            .foregroundStyle(.bodyBlack)
            .fontWeight(.bold)
    }
}

// style modifier for body content
struct BodyTextStyleModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 12))
            .foregroundStyle(.bodyBlack)
            .multilineTextAlignment(.leading)
    }
}
