//
//  RestaurantMenuView.swift
//  Menu
//
//  Created by Artem Paliutin on 21.12.2021.
//

import SwiftUI

struct RestaurantMenuView: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        List {
            // MARK: - Salad
            Section("Salad") {
                ForEach(vm.salatMenu) { restaurantMenu in
                    DetailsFoodMenu(restaurantMenu: restaurantMenu) {
                        vm.addFoodCart(restaurantMenu: restaurantMenu)
                    }
                }
            }
            // MARK: - Meat
            Section("Meat") {
                ForEach(vm.meatMenu) { restaurantMenu in
                    DetailsFoodMenu(restaurantMenu: restaurantMenu) {
                        vm.addFoodCart(restaurantMenu: restaurantMenu)
                    }
                }
            }
            // MARK: - Pizza
            Section("Pizza") {
                ForEach(vm.pizzaMenu) { restaurantMenu in
                    DetailsFoodMenu(restaurantMenu: restaurantMenu) {
                        vm.addFoodCart(restaurantMenu: restaurantMenu)
                    }
                }
            }
            // MARK: - Soup
            Section("Soup") {
                ForEach(vm.soupMenu) { restaurantMenu in
                    DetailsFoodMenu(restaurantMenu: restaurantMenu) {
                        vm.addFoodCart(restaurantMenu: restaurantMenu)
                    }
                }
            }
            // MARK: - Dessert
            Section("Dessert") {
                ForEach(vm.dessertMenu) { restaurantMenu in
                    DetailsFoodMenu(restaurantMenu: restaurantMenu) {
                        vm.addFoodCart(restaurantMenu: restaurantMenu)
                    }
                }
            }
            // MARK: - Drinks
            Section("Drinks") {
                ForEach(vm.drinkMenu) { restaurantMenu in
                    DetailsFoodMenu(restaurantMenu: restaurantMenu) {
                        vm.addFoodCart(restaurantMenu: restaurantMenu)
                    }
                }
            }
            
        }
        .ignoresSafeArea()
        .listStyle(.plain)
    }
}










struct RestaurantMenuView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantMenuView(vm: MenuViewModel())
    }
}
