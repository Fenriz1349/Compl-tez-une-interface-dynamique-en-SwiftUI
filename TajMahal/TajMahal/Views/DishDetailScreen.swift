//
//  DishDetailScreen.swift
//  TajMahal
//
//  Created by Julien Cotte on 04/10/2024.
//

import SwiftUI

struct DishDetailScreen: View {
    var dish: Dish
    var body: some View {
        VStack (alignment: .leading, spacing: 14){
            ImageAndPiment(image: dish.imageName, spiceLevel: dish.spiceLevel)
                .padding(.bottom,25)
            Text("Allergènes")
                .titleTextStyle()
            Text(dish.allergens)
                .bodyTextStyle()
            Divider()
            Text("ingrédients")
                .titleTextStyle()
            Text(dish.ingredients)
                .bodyTextStyle()
                    
            }
            .padding(.horizontal,20)
            .CustomNavigationTitle(dish.name)
        }
        
}

#Preview {
    NavigationStack {
        DishDetailScreen(dish: Menu.tikkaMasala.dish)
    }
}
