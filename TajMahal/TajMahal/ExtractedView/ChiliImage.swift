//
//  ChiliImage.swift
//  TajMahal
//
//  Created by Julien Cotte on 04/10/2024.
//

import SwiftUI

struct ChiliImage: View {
    let color: Color
    var body: some View {
        VStack {
            Image(.chiliTop)
                .renderingMode(.template)
                .resizable()
                .frame(width: 7,height: 8)
                .foregroundColor(color)
                .offset(x:4, y:12)
            Image(.chiliBottom)
                .renderingMode(.template)
                .resizable()
                .frame(width: 12,height: 9)
                .foregroundColor(color)
        }
    }
}

#Preview {
    ChiliImage(color: .customRed)
}
