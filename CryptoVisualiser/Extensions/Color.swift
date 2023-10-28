//
//  Color.swift
//  CryptoVisualiser
//
//  Created by Rajveer Singh on 24/10/23.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("CustomGreenColor")
    let red = Color("CustomRedColor")
    let secondaryColor = Color("SecondaryTextColor")
}
