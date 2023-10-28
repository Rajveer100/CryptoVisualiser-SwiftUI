//
//  CryptoVisualiserApp.swift
//  CryptoVisualiser
//
//  Created by Rajveer Singh on 24/10/23.
//

import SwiftUI

@main
struct CryptoVisualiserApp: App {
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .toolbar(.hidden, for: .navigationBar)
            }
            .environmentObject(vm)
        }
    }
}
