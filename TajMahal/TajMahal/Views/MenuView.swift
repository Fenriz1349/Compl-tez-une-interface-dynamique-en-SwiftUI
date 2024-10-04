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
            NavigationStack {
                ZStack{
                Color(.lightBackground)
                    .ignoresSafeArea()
                    
                ScrollView {
                    HStack {
                        Text("Entrées")
                            .modifier(TitleTextStyle())
                        Spacer()
                    }
                    
                    ForEach(Dishes.allAppetizer, id: \.self) { dish in
                        DishCard(dish: dish)
                            .padding(.vertical,12)
                    }
                    HStack {
                        Text("Plats Principaux")
                            .modifier(TitleTextStyle())
                        Spacer()
                    }
                    
                    ForEach(Dishes.allMainCrouser, id: \.self) { dish in
                        DishCard(dish: dish)
                            .padding(.vertical,12)
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
                .padding(.horizontal,20)
            }
        }
    }
}

#Preview {
    MenuView()
}
