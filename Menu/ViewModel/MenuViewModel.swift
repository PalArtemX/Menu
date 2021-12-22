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
    @Published var menu: Menu
    
    // MARK: - Restaurant Menu
    @Published var salatMenu: [RestaurantMenu]
    @Published var pizzaMenu: [RestaurantMenu]
    @Published var meatMenu: [RestaurantMenu]
    @Published var soupMenu: [RestaurantMenu]
    @Published var dessertMenu: [RestaurantMenu]
    @Published var drinkMenu: [RestaurantMenu]
    
    
    init() {
        salatMenu = RestaurantMenuData.salat
        pizzaMenu = RestaurantMenuData.pizza
        meatMenu = RestaurantMenuData.meat
        soupMenu = RestaurantMenuData.soup
        dessertMenu = RestaurantMenuData.dessert
        drinkMenu = RestaurantMenuData.drink
        
        menu = Menu(
            badgeCart: 1,
            selectedTab: 0,
            numberPhone: "7777777",
            nameCafe: "Park Kultyry",
            addressCafe: "Molodegny Prospect 2A",
            openingHours: "10:00 - 23:00",
            selectedTagDeliveryOrRestaurant: 1,
            countPromoImage: 8,
            selectedPromoImage: 1)
    }

}
