//
//  PickerDeliveryOrRestaurant.swift
//  Menu
//
//  Created by Artem Paliutin on 20.12.2021.
//

import SwiftUI

struct PickerDeliveryOrRestaurant: View {
    
    @ObservedObject var vm: MenuViewModel
    @State private var showMapRestaurant = false
    
    var body: some View {
        VStack {
            // MARK: - Picker
            Picker("", selection: $vm.menu.selectedTagDeliveryOrRestaurant) {
                Text("Delivery")
                    .tag(1)
                Text("Restaurant")
                    .tag(2)
            }
            .pickerStyle(.segmented)
            
            Divider()
            // MARK: - Selected Tag Delivery Or Restaurant
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                    .foregroundColor(.accentColor.opacity(0.5))
                    .frame(height: 25)
                
                if vm.menu.selectedTagDeliveryOrRestaurant == 1 {
                    HStack {
                        Image(systemName: "shippingbox")
                        Text("Address delivery")
                            .lineLimit(1)
                    }
                    .font(.caption)
                } else if vm.menu.selectedTagDeliveryOrRestaurant == 2 {
                    HStack {
                        Image(systemName: "fork.knife")
                        Text(vm.menu.addressCafe)
                            .lineLimit(1)
                    }
                    .font(.caption)
                    .onTapGesture {
                        vm.menu.selectedTab = 2
                    }
                }
            }
            .font(.subheadline)
        }
        .padding(.horizontal)
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
