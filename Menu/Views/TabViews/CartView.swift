//
//  CartView.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI

struct CartView: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            
            VStack {
            // MARK: - Cart List or Cart Is Empty
                Spacer()
                
                if vm.cart.isEmpty {
                    CartIsEmptyView(vm: vm)
                } else {
                    List {
                        ForEach(vm.cart) { item in
                            DetailCartView(name: item.name, image: item.image, price: item.price, vm: vm)
                        }
                        .onDelete(perform: vm.deleteCart)
                    }
                    .listStyle(.plain)
                }
                
                
                
                
            
            
                Spacer()
            // MARK: - Place an Order
                Text("Kolichestvo: \(vm.cart.count)")
                Text("Price:  ")
                Text("Summa: ")
            }
        }
    }
}










struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(vm: MenuViewModel())
    }
}
