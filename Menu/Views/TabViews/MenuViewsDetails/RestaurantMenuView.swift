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
            Section("Salad") {
                ForEach(vm.salatMenu) { item in
                    DetailsFoodMenu(name: item.name, image: item.image, price: item.price) {
                        // CODE
                    }
                }
                
                
                
                
            }
            
            

        }
        .ignoresSafeArea()
        //.foregroundColor(.accentColor)
        .listStyle(.plain)
    }
}










struct RestaurantMenuView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantMenuView(vm: MenuViewModel())
    }
}
