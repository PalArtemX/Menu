//
//  ContactsView.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI

struct ContactsView: View {
    
    @ObservedObject var vm: MenuViewModel
    @State private var showAboutView = false
    
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            
            VStack {
                // MARK: - MapView
                MapView(vm: vm)
                    .frame(maxHeight: .infinity)
                    .cornerRadius(20)
                // MARK: - Buttons
                ButtonsContactsView(vm: vm)
                Divider()
                // MARK: - SocialNetworkView
                SocialNetworkView()
                Divider()
                // MARK: - ContactAddressPhoneView
                ContactAddressPhoneView(vm: vm)
                Divider()
                // MARK: - About
                HStack {
                    Image(systemName: "info.circle")
                    Text("About")
                        .onTapGesture {
                            showAboutView.toggle()
                        }
                        .sheet(isPresented: $showAboutView, onDismiss: nil) {
                            AboutView()
                    }
                }
                .foregroundColor(.accentColor)
                .font(.subheadline)
                Divider()
            }
            .ignoresSafeArea(edges: .top)
        }
    }
}










struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContactsView(vm: MenuViewModel())
        }
    }
}
