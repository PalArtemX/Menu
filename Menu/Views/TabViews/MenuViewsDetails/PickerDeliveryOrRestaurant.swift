//
//  PickerDeliveryOrRestaurant.swift
//  Menu
//
//  Created by Artem Paliutin on 20.12.2021.
//

import SwiftUI

struct PickerDeliveryOrRestaurant: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        VStack {
            // MARK: - Picker
            Picker("", selection: $vm.menu.selectedTagDeliveryOrRestaurant) {
                // MARK: - Delivery
                Text("Delivery")
                    .tag(1)
                // MARK: - Restaurant
                Text("Restaurant")
                    .tag(2)
            }
            .pickerStyle(.segmented)
            Divider()
            // MARK: - selectedTagDeliveryOrRestaurant
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                    .frame(width: .infinity, height: 50)
                    .foregroundColor(.accentColor.opacity(0.7))
                
                if vm.menu.selectedTagDeliveryOrRestaurant == 1 {
                    HStack {
                        Image(systemName: "shippingbox")
                        Text("Address delivery")
                            .lineLimit(2)
                    }
                } else if vm.menu.selectedTagDeliveryOrRestaurant == 2 {
                    HStack {
                        Image(systemName: "fork.knife")
                        Text(vm.menu.addressCafe)
                            .lineLimit(2)
                    }
                }
            }
            .font(.subheadline)
        }
        .padding()
    }
}










struct PickerDeliveryOrRestaurant_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PickerDeliveryOrRestaurant(vm: MenuViewModel())
                .previewLayout(.sizeThatFits)
            .padding()
            PickerDeliveryOrRestaurant(vm: MenuViewModel())
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
