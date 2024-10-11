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
        ZStack{
            Color.lightBackground
                .ignoresSafeArea()
            Text(dish.name)
        }
        .CustomNavigationTitle(dish.name)
    }
}

#Preview {
    NavigationStack {
        DishDetailScreen(dish: Menu.allDishes.first!)
    }
}
