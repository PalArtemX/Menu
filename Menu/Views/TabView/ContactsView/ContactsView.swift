//
//  ContactsView.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(maxHeight: 300)
                .cornerRadius(30)
                .padding()
            Spacer()
            ContactAddressPhoneView(address: "Park Kultury", phone: "777 77 77", openingHours: "10:00 - 02:00")
        }
    }
}










struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
