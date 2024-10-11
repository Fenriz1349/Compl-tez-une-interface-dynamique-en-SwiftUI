//
//  WelcomeRow.swift
//  TajMahal
//
//  Created by Julien Cotte on 27/09/2024.
//

import SwiftUI

struct WelcomeRow: View {
    var symbol: ImageResource
    var contentLeading: WelcomeContent
    var contentTrailing: WelcomeContent?
    var body: some View {
        HStack {
            Image(symbol)
                .resizable()
                .scaledToFit()
                .frame(width: 14, height: 14)
            Text(contentLeading.content.capitalizeFirstLetter())
                .modifier(BodyTextStyle())
            Spacer()
            if let content = contentTrailing?.content {
                Text(content.capitalizeFirstLetter())
                    .modifier(BodyTextStyle())
                    .fontWeight(.medium)
            }
        }
    }
}

#Preview {
    WelcomeRow(symbol:.clock, contentLeading: .day, contentTrailing: .schedule)
}
