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
            Image(ImageName.tajmahal.rawValue)
                .padding(.top,10)
            Spacer()
            HeaderWelcome()
            Spacer()
            VStack {
                WelcomeRow(symbol: .clock, contentLeading: dateString, contentTrailing: getScheduleOfDay(date))
                WelcomeRow(symbol: .serviceType, contentLeading: "Types de Service", contentTrailing: "à emporter")
                WelcomeRow(symbol: .location, contentLeading: "12 avenue de la Brique - 75010 Paris")
                WelcomeRow(symbol: .website, contentLeading: "www.tajmahal.fr")
                WelcomeRow(symbol: .phone, contentLeading: "06 12 34 56 78")
            }
            Spacer()
            NavigationLink {
                MenuView()
            } label : {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color ("CustomRed"))
                        .frame(height: 40)
                    Text("Accéder au Menu")
                        .foregroundStyle(.white)
                }
            }
            .padding(.bottom,10)
        }
        .padding(.horizontal,20)
    }
}

#Preview {
    WelcomeView()
}
