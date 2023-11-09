//
//  ContentView.swift
//  CryptoVisualiser
//
//  Created by Rajveer Singh on 24/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
    }
}

#Preview {
    ContentView()
        .environmentObject(HomeViewModel())
}
