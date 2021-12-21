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
    @Published var salatMenu: [RestaurantMenu] = [
        RestaurantMenu(image: Image("salat"), price: 3.50, name: "Garden Fresh"),
        RestaurantMenu(image: Image("salat2"), price: 5.25, name: "Nicoise"),
        RestaurantMenu(image: Image("salat3"), price: 2.50, name: "Greek Salad"),
        RestaurantMenu(image: Image("salat4"), price: 5.10, name: "Caesar Salad")
    ]
    
    @Published var pizzaMenu: [RestaurantMenu] = [
    
    ]
    
    @Published var meatMenu: [RestaurantMenu] = [
    
    ]
    
    @Published var burgerMenu: [RestaurantMenu] = [
    
    ]
    
    @Published var soupMenu: [RestaurantMenu] = [
    
    ]
    
    @Published var dessertMenu: [RestaurantMenu] = [
    
    ]
    
    @Published var drinkMenu: [RestaurantMenu] = [
    
    ]
    
}
