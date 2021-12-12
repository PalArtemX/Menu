//
//  HomeView.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selectedTab = 0
    @State private var badge = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // MARK: - Menu
            MenuView()
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Menu")
                }
                .tag(0)
            // MARK: - Profile
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(1)
            // MARK: - Contacts
            ContactsView()
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Contacts")
                }
                .tag(2)
            // MARK: - Cart
            CartView()
                .badge(badge)
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
                .tag(3)
        }
        
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
