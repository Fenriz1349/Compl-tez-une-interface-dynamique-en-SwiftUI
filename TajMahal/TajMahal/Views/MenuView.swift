//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    @State var category: DishCategory = .appetizer
    var body: some View {
        NavigationStack {
            ZStack{
                Color(.lightBackground)
                    .ignoresSafeArea()
                VStack{
                    Picker("Type :", selection: $category) {
                        ForEach(DishCategory.allCases, id: \.self) { category in
                            Text(category.rawValue)
                                .tag(category as DishCategory?)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal,20)
                    ScrollView {
                        HStack {
                            Text("Entrées")
                                .modifier(TitleTextStyle())
                            Spacer()
                        }
                        
                        ForEach(Menu.allAppetizer, id: \.self) { dish in
                            DishCard(dish: dish)
                                .padding(.vertical,12)
                        }
                        HStack {
                            Text("Plats Principaux")
                                .modifier(TitleTextStyle())
                            Spacer()
                        }
                        
                        ForEach(Menu.allMainCrouser, id: \.self) { dish in
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
}

#Preview {
    MenuView()
}
