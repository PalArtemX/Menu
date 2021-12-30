//
//  MenuApp.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseCore

@main
struct MenuApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
