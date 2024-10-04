//
//  MenuButton.swift
//  TajMahal
//
//  Created by Julien Cotte on 04/10/2024.
//

import SwiftUI

struct MenuButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.customRed)
                .frame(height: 40)
            Text("Accéder au Menu")
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    MenuButton()
}
