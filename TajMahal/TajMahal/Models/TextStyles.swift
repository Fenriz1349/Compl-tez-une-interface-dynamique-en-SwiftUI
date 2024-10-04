//
//  TextStyles.swift
//  TajMahal
//
//  Created by Julien Cotte on 27/09/2024.
//

import SwiftUI

// style modifier for Main Title
struct MainTitleTextStyle: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 18))
            .foregroundStyle(.titleBlack)
            .fontWeight(.bold)
    }
}

// style modifier for Title
struct TitleTextStyle: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
            .foregroundStyle(.bodyBlack)
            .fontWeight(.bold)
    }
}

// style modifier for body content
struct BodyTextStyle: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 12))
            .foregroundStyle(.bodyBlack)
    }
}
