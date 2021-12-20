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
                // MARK: - Header
                HeaderLogoView(vm: vm)

                // MARK: - delivery or restaurant
                PickerDeliveryOrRestaurant(vm: vm)
                
                // MARK: - Promotion
                PromotionView(vm: vm)
                
                // MARK: - often ordered
                
                // MARK: - menu
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
