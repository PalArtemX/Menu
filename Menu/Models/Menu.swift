//
//  Menu.swift
//  Menu
//
//  Created by Artem Paliutin on 14.12.2021.
//

import Foundation
import MapKit

struct Menu {
    // MARK: - HomeView
    var selectedTab: Int
    
    // MARK: - ContactsView
    var numberPhone: String
    var nameCafe: String
    var addressCafe: String
    var openingHours: String
    
    // MARK: - MenuView
    var selectedTagDeliveryOrRestaurant: Int
    var countPromoImage: Int
    var selectedPromoImage: Int
    
    
}
