//
//  DishCategoryList.swift
//  TajMahal
//
//  Created by Julien Cotte on 11/10/2024.
//

import SwiftUI

struct DishCategoryList: View {
    var dishCategory : DishCategory
    var body: some View {
        VStack {
            HStack {
                Text(dishCategory.rawValue)
                    .titleTextStyle()
                Spacer()
            }
            .padding(.bottom,12)
            
            ForEach(Menu.allDishOfCategory(of: dishCategory), id: \.self.name) { dish in
                NavigationLink(destination: DishDetailScreen(dish: dish)){
                    DishCard(dish: dish)
                        .padding(.bottom,12)
                }
            }
        }
        .padding(.horizontal,12)
    }
}

#Preview {
    DishCategoryList(dishCategory: .appetizer)
}
