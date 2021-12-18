//
//  MenuViewModel.swift
//  Menu
//
//  Created by Artem Paliutin on 14.12.2021.
//

import Foundation
import MapKit

class MenuViewModel: ObservableObject {
    
    @Published var menu = Menu(
        badgeCart: 1,
        selectedTab: 0,
        numberPhone: "7777777",
        nameCafe: "Park Kultyry",
        address: "Molodegny Prospect 2A",
        openingHours: "10:00 - 23:00")
    
    
}
