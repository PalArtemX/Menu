//
//  RestaurantMenu.swift
//  Menu
//
//  Created by Artem Paliutin on 21.12.2021.
//

import Foundation
import SwiftUI

struct RestaurantMenu: Identifiable {
    var id = UUID()
    var image: Image
    var price: Double
    var name: String
}
