//
//  ContentView.swift
//  CryptoVisualiser
//
//  Created by Rajveer Singh on 24/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Color.theme.background.ignoresSafeArea()
            }
            
            VStack {
                Text("Accent Color")
                    .foregroundStyle(Color.theme.accent)
                
                Text("Secondary Text Color")
                    .foregroundStyle(Color.theme.secondaryColor)
                
                Text("Red Color")
                    .foregroundStyle(Color.theme.red)
                
                Text("Green Color")
                    .foregroundStyle(Color.theme.green)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
