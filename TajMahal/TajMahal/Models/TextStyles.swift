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
            .font(.system(size: 20))
            .fontWeight(.bold)
    }
}

// style modifier for Title
struct TitleTextStyle: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 18))
            .foregroundStyle(.gray)
    }
}

// style modifier for body content
struct BodyTextStyle: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
            .fontWeight(.light)
    }
}

// style modifier for welcome Screen texts
struct WelcomeTextStyle: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
    }
}
