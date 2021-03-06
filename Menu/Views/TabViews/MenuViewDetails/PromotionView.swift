//
//  PromotionView.swift
//  Menu
//
//  Created by Artem Paliutin on 20.12.2021.
//

import SwiftUI

struct PromotionView: View {
    
    @State private var showSheetImage = false
    @ObservedObject var vm: MenuViewModel
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<vm.menu.countPromoImage) { count in
                    Image("Promo\(count)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 65)
                        .cornerRadius(5)
                        .onTapGesture {
                            vm.menu.selectedPromoImage = count
                            self.showSheetImage.toggle()
                        }
                        
                        
                }
                .sheet(isPresented: $showSheetImage, onDismiss: nil) {
                    PromoImageView(vm: vm)
                }
            }
           
            
        }
    }
}










struct PromotionView_Previews: PreviewProvider {
    static var previews: some View {
        PromotionView(vm: MenuViewModel())
    }
}
