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
    
    func mainTitleTextStyle() -> some View {
        self.modifier(MainTitleTextStyleModifier())
    }
    
    func titleTextStyle() -> some View {
        self.modifier(TitleTextStyleModifier())
    }
    
    func bodyTextStyle() -> some View {
        self.modifier(BodyTextStyleModifier())
    }
}
