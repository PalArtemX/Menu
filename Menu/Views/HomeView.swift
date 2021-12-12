//
//  HomeView.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView {
            
            Text("Home")
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Text("Account")
                .tabItem {
                    Image(systemName: "plus")
                }
        }
        
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
