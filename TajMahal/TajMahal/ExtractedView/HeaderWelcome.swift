//
//  HeaderWelcome.swift
//  TajMahal
//
//  Created by Julien Cotte on 27/09/2024.
//

import SwiftUI

struct HeaderWelcome: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(WelcomeContent.restaurantType.content.capitalized)
                    .bodyTextStyle()
                Spacer()
                Text(WelcomeContent.restaurantName.content.capitalized)
                    .mainTitleTextStyle()
            }
            Spacer()
            Image(.logo)
                .renderingMode(.template) // Rend l'image modifiable en tant que template pour changer sa couleur
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(.logoGray)
        }
        .frame(height: 40)
    }
}

#Preview {
    HeaderWelcome()
}
