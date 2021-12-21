//
//  MenuViewModel.swift
//  Menu
//
//  Created by Artem Paliutin on 14.12.2021.
//

import Foundation
import MapKit
import SwiftUI

class MenuViewModel: ObservableObject {
    
    // MARK: - Menu
    @Published var menu = Menu(
        badgeCart: 1,
        selectedTab: 0,
        numberPhone: "7777777",
        nameCafe: "Park Kultyry",
        addressCafe: "Molodegny Prospect 2A",
        openingHours: "10:00 - 23:00",
        selectedTagDeliveryOrRestaurant: 1,
        countPromoImage: 8,
        selectedPromoImage: 1)
    
    // MARK: - Restaurant Menu
    @Published var restaurantMenu: [RestaurantMenu] = [
        RestaurantMenu(image: Image("salat"), price: 10.30, name: "Salat1"),
        RestaurantMenu(image: Image("salat2"), price: 5.23, name: "Salat2")
    ]
    
    
    
}
