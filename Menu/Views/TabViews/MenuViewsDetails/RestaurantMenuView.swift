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
                ForEach(vm.salatMenu) { item in
                    DetailsFoodMenu(name: item.name, image: item.image, price: item.price) {
                        vm.addFoodCart(item: item)
                    }
                }
            }
            // MARK: - Meat
            Section("Meat") {
                ForEach(vm.meatMenu) { item in
                    DetailsFoodMenu(name: item.name, image: item.image, price: item.price) {
                        vm.addFoodCart(item: item)
                    }
                }
            }
            // MARK: - Pizza
            Section("Pizza") {
                ForEach(vm.pizzaMenu) { item in
                    DetailsFoodMenu(name: item.name, image: item.image, price: item.price) {
                        vm.addFoodCart(item: item)
                    }
                }
            }
            // MARK: - Soup
            Section("Soup") {
                ForEach(vm.soupMenu) { item in
                    DetailsFoodMenu(name: item.name, image: item.image, price: item.price) {
                        vm.addFoodCart(item: item)
                    }
                }
            }
            // MARK: - Dessert
            Section("Dessert") {
                ForEach(vm.dessertMenu) { item in
                    DetailsFoodMenu(name: item.name, image: item.image, price: item.price) {
                        vm.addFoodCart(item: item)
                    }
                }
            }
            // MARK: - Drinks
            Section("Drinks") {
                ForEach(vm.drinkMenu) { item in
                    DetailsFoodMenu(name: item.name, image: item.image, price: item.price) {
                        vm.addFoodCart(item: item)
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
