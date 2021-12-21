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
                Image("Promo1")
                Image("Promo1")
            }
        }
        .listStyle(.sidebar)
    }
}










struct RestaurantMenuView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantMenuView(vm: MenuViewModel())
    }
}
