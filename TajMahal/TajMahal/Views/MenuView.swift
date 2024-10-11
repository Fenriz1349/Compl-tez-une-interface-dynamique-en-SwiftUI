//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    var body: some View {
        ZStack{
            Color(.lightBackground)
                .ignoresSafeArea()
            VStack{
                ScrollView {
                    ForEach(DishCategory.allCases, id: \.self) {dishCategory in
                        DishCategoryList(dishCategory: dishCategory)
                    }
                }
                .navigationTitle("Menu")
                .navigationBarBackButtonHidden(true)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        CustomBackButton()
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        MenuView()
    }
}
