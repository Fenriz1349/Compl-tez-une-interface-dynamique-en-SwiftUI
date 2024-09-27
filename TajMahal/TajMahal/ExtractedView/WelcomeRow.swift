//
//  WelcomeRow.swift
//  TajMahal
//
//  Created by Julien Cotte on 27/09/2024.
//

import SwiftUI

struct WelcomeRow: View {
    var symbol: ImageName
    var contentLeading: String
    var contentTrailing: String?
    var body: some View {
        HStack {
            Image(symbol.rawValue)
                .resizable()
                .scaledToFit()
                .frame(width: 14, height: 14)
            Text(contentLeading.first != "w" ? contentLeading.capitalizeFirstLetter() : contentLeading)
                .modifier(WelcomeTextStyle())
            Spacer()
            if let content = contentTrailing {
                Text(content.capitalizeFirstLetter())
                    .modifier(WelcomeTextStyle())
                    .fontWeight(.medium)
            }
        }
    }
            
}

#Preview {
    WelcomeRow(symbol:.location , contentLeading: "Mardi", contentTrailing: "11h30 - 14h30 · 18h30 - 22h00")
}
