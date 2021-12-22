//
//  Color.swift
//  Menu
//
//  Created by Artem Paliutin on 18.12.2021.
//

import Foundation
import SwiftUI


struct ColorTheme {
    // MARK: - Background Colors
    let background1 = Color("Background1")
    let background2 = Color("Background2")
    let background3 = Color("Background3")
    let background4 = Color("Background4")
    
    
}


extension Color {
    static var colorTheme = ColorTheme()
}
