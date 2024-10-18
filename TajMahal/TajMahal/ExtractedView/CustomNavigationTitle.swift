//
//  CustomNavigationTitle.swift
//  TajMahal
//
//  Created by Julien Cotte on 11/10/2024.
//

import SwiftUI

// ViewModifier pour customiser le titre de Navigation
struct CustomNavigationTitleModifier: ViewModifier {
    var title: String
    
    func body(content: Content) -> some View {
        content
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    CustomBackButton()
                }
                ToolbarItem(placement: .principal) {
                    if title == "menu" {
                        Text(title.capitalized)
                            .mainTitleTextStyle()
                    } else {
                        HStack {
                            Text(title.capitalized)
                                .mainTitleTextStyle()
                            Spacer()
                        }
                    }
                }
            }
    }
}
