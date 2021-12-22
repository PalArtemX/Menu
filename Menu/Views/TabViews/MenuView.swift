//
//  MenuView.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI

struct MenuView: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            
            VStack {
                // MARK: - Header Logo
                HeaderLogoView(vm: vm)

                // MARK: - Delivery or Restaurant
                PickerDeliveryOrRestaurant(vm: vm)
                Divider()
                
                // MARK: - Promotion
                PromotionView(vm: vm)
                
                // MARK: - Restaurant Menu
                RestaurantMenuView(vm: vm)
                Spacer()
            }
        }
    }
}










struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(vm: MenuViewModel())
    }
}
