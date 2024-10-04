//
//  PimentLevel.swift
//  TajMahal
//
//  Created by Julien Cotte on 04/10/2024.
//

import SwiftUI

struct SpiceLevelCard: View {
    let spiceLevel: SpiceLevel
    var body: some View {
        ZStack (alignment: .center) {
            RoundedRectangle(cornerRadius: 50)
                .foregroundStyle(.white)
            HStack (spacing:10) {
                ChiliImage(color: .customRed)
                ChiliImage(color: spiceLevel == .light ? .chiliGray : .customRed)
                ChiliImage(color: spiceLevel == .hot ? .customRed : .chiliGray)
            }
            .offset(y:-6)
        }
        .frame(width: 74,height: 22)
    }
}

#Preview {
    SpiceLevelCard(spiceLevel: .light)
}
