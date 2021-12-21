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
        RestaurantMenu(image: Image("pizza"), price: 5.50, name: "Quattro Stagioni"),
        RestaurantMenu(image: Image("pizza1"), price: 6.00, name: "Montanara"),
        RestaurantMenu(image: Image("pizza2"), price: 4.50, name: "Carbonara")
    ]
    
    @Published var meatMenu: [RestaurantMenu] = [
        RestaurantMenu(image: Image("meat"), price: 11.00, name: "Spareribs"),
        RestaurantMenu(image: Image("meat2"), price: 9.00, name: "Carpaccio"),
        RestaurantMenu(image: Image("meat3"), price: 12.00, name: "Steak")
    ]
    
    @Published var soupMenu: [RestaurantMenu] = [
        RestaurantMenu(image: Image("soup"), price: 11.5, name: "Lagman")
    ]
    
    @Published var dessertMenu: [RestaurantMenu] = [
        RestaurantMenu(image: Image("desert"), price: 3.5, name: "Cheesecake"),
        RestaurantMenu(image: Image("desert2"), price: 4.5, name: "Ice Cream"),
        RestaurantMenu(image: Image("desert3"), price: 3.7, name: "Cake")
    ]
    
    @Published var drinkMenu: [RestaurantMenu] = [
        RestaurantMenu(image: Image("drink"), price: 1.00, name: "Juices")
    ]
    
}
