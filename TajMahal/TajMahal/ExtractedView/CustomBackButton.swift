//
//  CustomBackButton.swift
//  TajMahal
//
//  Created by Julien Cotte on 04/10/2024.
//

import SwiftUI

struct CustomBackButton: View {
    
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "chevron.backward")
                .foregroundStyle(.bodyBlack)
        }
    }
}

#Preview {
    CustomBackButton()
}
