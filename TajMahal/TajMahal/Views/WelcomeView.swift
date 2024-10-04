//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    let date = Date()
    var dateString :String {
        getDayInString(of: date)
    }
    var body: some View {
        NavigationStack {
            ZStack {
                Color.lightBackground
                    .ignoresSafeArea()
                
                VStack {
                    Image(.tajMahal)
                        .padding(.top,10)
                    Spacer()
                    HeaderWelcome()
                    Spacer()
                    VStack {
                        WelcomeRow(symbol: .clock, contentLeading: .day, contentTrailing: .schedule)
                        WelcomeRow(symbol: .serviceType, contentLeading: .serviceTypeCategory, contentTrailing: .serviceTypeName)
                        WelcomeRow(symbol: .location, contentLeading: .location)
                        WelcomeRow(symbol: .internetSite, contentLeading: .website)
                        WelcomeRow(symbol: .phone, contentLeading: .phoneNumber)
                    }
                    Spacer()
                    NavigationLink {
                        MenuView()
                    } label : {
                        MenuButton()
                    }
                    .padding(.bottom,10)
                }
                .padding(.horizontal,20)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
