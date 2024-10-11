//
//  DishCard.swift
//  TajMahal
//
//  Created by Julien Cotte on 04/10/2024.
//

import SwiftUI

struct DishCard: View {
    let dish: Dish
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15.0)
                .foregroundStyle(.white)
            HStack {
                Image(dish.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 112,height: 86)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal,12)
                VStack (alignment: .leading){
                    Text(dish.name)
                        .modifier(TitleTextStyle())
                    Spacer()
                    Text(dish.description)
                        .modifier(BodyTextStyle())
                    Spacer()
                    HStack{
                        Text(dish.price.toEuroFormat())
                            .modifier(TitleTextStyle())
                        Spacer()
                        SpiceLevelCard(spiceLevel: dish.spiceLevel)
                    }
                }
                .padding(.horizontal,12)
            }
            .frame(height: 86)
        }
        .frame(height: 110)
    }
}

#Preview {
    DishCard(dish: Menu.aloo.dish)
}
