//
//  UIApplication.swift
//  CryptoVisualiser
//
//  Created by Rajveer Singh on 09/11/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
