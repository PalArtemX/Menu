//
//  RestaurantMenuData.swift
//  Menu
//
//  Created by Artem Paliutin on 22.12.2021.
//

import Foundation
import SwiftUI


class RestaurantMenuData {
    
    // MARK: - Salat
    static let salat = [
        RestaurantMenu(image: Image("salat"), price: 3.50, name: "Garden Fresh"),
        RestaurantMenu(image: Image("salat2"), price: 5.25, name: "Nicoise"),
        RestaurantMenu(image: Image("salat3"), price: 2.50, name: "Greek Salad"),
        RestaurantMenu(image: Image("salat4"), price: 5.10, name: "Caesar Salad")
    ]
    // MARK: - Pizza
    static let pizza = [
        RestaurantMenu(image: Image("pizza"), price: 5.50, name: "Quattro Stagioni"),
        RestaurantMenu(image: Image("pizza1"), price: 6.00, name: "Montanara"),
        RestaurantMenu(image: Image("pizza2"), price: 4.50, name: "Carbonara")
    ]
    // MARK: - Meat
    static let meat = [
        RestaurantMenu(image: Image("meat"), price: 11.00, name: "Spareribs"),
        RestaurantMenu(image: Image("meat2"), price: 9.00, name: "Carpaccio"),
        RestaurantMenu(image: Image("meat3"), price: 12.00, name: "Steak")
    ]
    // MARK: - Soup
    static let soup = [
        RestaurantMenu(image: Image("soup"), price: 11.5, name: "Lagman")
    ]
    // MARK: - Dessert
    static let dessert = [
        RestaurantMenu(image: Image("desert"), price: 3.5, name: "Cheesecake"),
        RestaurantMenu(image: Image("desert2"), price: 4.5, name: "Ice Cream"),
        RestaurantMenu(image: Image("desert3"), price: 3.7, name: "Cake")
    ]
    // MARK: - Drink
    static let drink = [
        RestaurantMenu(image: Image("drink"), price: 1.00, name: "Juices")
    ]
    
}
