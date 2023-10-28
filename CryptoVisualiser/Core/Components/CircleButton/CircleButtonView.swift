//
//  CircleButtonView.swift
//  CryptoVisualiser
//
//  Created by Rajveer Singh on 25/10/23.
//

import SwiftUI

struct CircleButtonView: View {
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background {
                Circle()
                    .foregroundStyle(Color.theme.background)
            }
            .shadow(color: Color.theme.accent.opacity(0.25),
                    radius: 10, x: 0.0, y: 0.0)
            .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CircleButtonView(iconName: "info")
        .padding()
}

#Preview(traits: .sizeThatFitsLayout) {
    CircleButtonView(iconName: "plus")
        .padding()
        .preferredColorScheme(.dark)
}
