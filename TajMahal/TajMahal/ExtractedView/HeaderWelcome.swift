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
                Text("Restaurant Indien")
                    .modifier(BodyTextStyle())
                Spacer()
                Text("Taj Mahal")
                    .modifier(MainTitleTextStyle())
            }
            Spacer()
            Image(ImageName.logo.rawValue)
                .renderingMode(.template) // Rendre l'image modifiable en tant que template
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(.gray)
        }
        .frame(height: 40)
    }
}

#Preview {
    HeaderWelcome()
}
