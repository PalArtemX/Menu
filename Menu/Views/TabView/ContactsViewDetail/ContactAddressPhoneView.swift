//
//  ContactAddressPhoneView.swift
//  Menu
//
//  Created by Artem Paliutin on 13.12.2021.
//

import SwiftUI

struct ContactAddressPhoneView: View {
    
    let address: String
    let phone: String
    let openingHours: String
    
    var body: some View {
        ZStack {
            VStack {
                Text(address)
                    .font(.headline)
                HStack {
                    Image(systemName: "phone")
                    Text(phone)
                }
                Text(openingHours)
                    .foregroundColor(.green)
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
        ContactAddressPhoneView(address: "Molodegny Prospect 2A", phone: "777 77 77", openingHours: "10:00 - 02:00")
    }
}
