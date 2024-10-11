//
//  ImageAndPiment.swift
//  TajMahal
//
//  Created by Julien Cotte on 11/10/2024.
//

import SwiftUI

struct ImageAndPiment: View {
    let image : ImageResource
    let spiceLevel: SpiceLevel
    var body: some View {
        ZStack (alignment: .topTrailing) {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 335,height: 467)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            SpiceLevelCard(spiceLevel: spiceLevel)
                .padding(.top, 12)
                .padding(.trailing, 12)
        }
        
    }
}

#Preview {
    ImageAndPiment(image: .samosas, spiceLevel: .medium)
}
