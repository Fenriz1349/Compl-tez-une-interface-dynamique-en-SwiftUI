//
//  DishCard.swift
//  TajMahal
//
//  Created by Julien Cotte on 04/10/2024.
//

import SwiftUI

struct DishCard: View {
    let dish: Menu
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15.0)
                .foregroundStyle(.white)
            HStack{
                Image(dish.dish.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 112,height: 96)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.trailing,25)
                VStack (alignment: .leading){
                    Text(dish.dish.name)
                        .modifier(TitleTextStyle())
                    Spacer()
                    Text(dish.dish.description)
                        .modifier(BodyTextStyle())
                    Spacer()
                    HStack{
                        Text(dish.dish.price.toEuroFormat())
                            .modifier(TitleTextStyle())
                        Spacer()
                        SpiceLevelCard(spiceLevel: dish.dish.spiceLevel)
                    }
                }
            }
            .padding(12)
        }
        .frame(height: 110)
    }
}

#Preview {
    DishCard(dish: .samosas)
}
