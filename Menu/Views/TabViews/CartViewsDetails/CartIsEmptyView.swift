//
//  CartIsEmptyView.swift
//  Menu
//
//  Created by Artem Paliutin on 23.12.2021.
//

import SwiftUI

struct CartIsEmptyView: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        VStack {
            Text("Your cart is empty yet")
                .font(.headline)
            
            Button {
                vm.menu.selectedTab = 0
            } label: {
                Image(systemName: "fork.knife")
                Text("Go to Menu")
                
            }
            .buttonStyle(.bordered)

        }
        .padding()
        .background(.ultraThickMaterial)
        .cornerRadius(10)
    }
}










struct CartIsEmptyView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CartIsEmptyView(vm: MenuViewModel())
                .previewLayout(.sizeThatFits)
            .padding()
            CartIsEmptyView(vm: MenuViewModel())
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
