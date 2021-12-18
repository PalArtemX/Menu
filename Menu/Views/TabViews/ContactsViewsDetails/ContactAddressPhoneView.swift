//
//  ContactAddressPhoneView.swift
//  Menu
//
//  Created by Artem Paliutin on 13.12.2021.
//

import SwiftUI

struct ContactAddressPhoneView: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        ZStack {
            VStack {
                // MARK: - Address
                Text(vm.menu.address)
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .padding(.bottom)

                // MARK: - Opening Hours
                HStack {
                    Image(systemName: "clock")
                    Text(vm.menu.openingHours)
                        
                }
                .foregroundColor(.accentColor)
                // MARK: - Phone
                HStack {
                    Image(systemName: "phone")
                    Text(vm.menu.numberPhone)
                }
                .foregroundColor(.secondary)
                .font(.subheadline)
            }
            .padding()
            .background(.ultraThinMaterial)
            .foregroundColor(.primary)
            .cornerRadius(10)
        }
    }
}










struct ContactAddressPhoneView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContactAddressPhoneView(vm: MenuViewModel())
                .previewLayout(.sizeThatFits)
                .padding()
            ContactAddressPhoneView(vm: MenuViewModel())
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
