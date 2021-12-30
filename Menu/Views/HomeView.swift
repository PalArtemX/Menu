//
//  HomeView.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = MenuViewModel()
    
    var body: some View {
        TabView(selection: $vm.menu.selectedTab) {
            // MARK: - Menu
            MenuView(vm: vm)
                .tabItem {
                    Image(systemName: "fork.knife")
                    Text("Menu")
                }
                .tag(0)
            // MARK: - Profile
            ProfileView(vm: vm)
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(1)
            // MARK: - Contacts
            ContactsView(vm: vm)
                .tabItem {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Contacts")
                }
                .tag(2)
            // MARK: - Cart
            CartView(vm: vm)
                .badge(vm.cart.count)
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
        Group {
            HomeView()
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}
