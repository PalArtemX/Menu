//
//  PromoImageView.swift
//  Menu
//
//  Created by Artem Paliutin on 20.12.2021.
//

import SwiftUI

struct PromoImageView: View {

    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            
            VStack {
                // MARK: - Header Logo
                HeaderLogoView(vm: vm)
                
                // MARK: - Image promo
                Image("Promo\(vm.menu.selectedPromoImage)")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .padding()
            }
        }
    }
}










struct PromotionImageView_Previews: PreviewProvider {
    static var previews: some View {
        PromoImageView(vm: MenuViewModel())
    }
}
