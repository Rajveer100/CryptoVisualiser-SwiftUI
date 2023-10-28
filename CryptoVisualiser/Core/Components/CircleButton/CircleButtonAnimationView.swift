//
//  CircleButtonAnimationView.swift
//  CryptoVisualiser
//
//  Created by Rajveer Singh on 26/10/23.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(style: .init(lineWidth: 5.0))
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? .easeOut(duration: 1.0) : .none, value: animate)
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
        .frame(width: 100, height: 100)
}
