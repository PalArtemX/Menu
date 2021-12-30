//
//  MenuViewModel.swift
//  Menu
//
//  Created by Artem Paliutin on 14.12.2021.
//

import Foundation
import MapKit
import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseCore

class MenuViewModel: ObservableObject {
    
    // MARK: - Menu
    @Published var menu: Menu
    
    // MARK: - Restaurant Menu
    @Published var salatMenu: [RestaurantMenu]
    @Published var pizzaMenu: [RestaurantMenu]
    @Published var meatMenu: [RestaurantMenu]
    @Published var soupMenu: [RestaurantMenu]
    @Published var dessertMenu: [RestaurantMenu]
    @Published var drinkMenu: [RestaurantMenu]
    
    // MARK: - Cart
    @Published var cart: [RestaurantMenu] = []
    
    // MARK: - Profile
    @Published var profile = ProfileModel()
    
    // MARK: - init
    init() {
        salatMenu = RestaurantMenuData.salat
        pizzaMenu = RestaurantMenuData.pizza
        meatMenu = RestaurantMenuData.meat
        soupMenu = RestaurantMenuData.soup
        dessertMenu = RestaurantMenuData.dessert
        drinkMenu = RestaurantMenuData.drink
        
        menu = Menu(
            selectedTab: 0,
            numberPhone: "7777777",
            nameCafe: "Park Kultury",
            addressCafe: "Molodegny Prospect 2A",
            openingHours: "10:00 - 23:00",
            selectedTagDeliveryOrRestaurant: 1,
            countPromoImage: 8,
            selectedPromoImage: 1)
    }
    
    // MARK: - UserDefaults
    @AppStorage("name_user") var nameUser = ""
    @AppStorage("email_user") var emailUser = ""
    @AppStorage("address_user") var addressUser = ""
    
    // MARK: - Firebase
    var isSignedIn: Bool {
            return Auth.auth().currentUser != nil
        }
    
    // MARK: - func Firebase
    func signIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else { return }
            DispatchQueue.main.async {
                self?.profile.signedIn = true
            }
            
        }
        saveUserProfile(email: email)
    }
    
    func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else { return }
            DispatchQueue.main.async {
                self?.profile.signedIn = true
            }
        }
        saveUserProfile(email: email)
        
        profile.password = ""
        profile.passwordCheck = ""
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        self.profile.signedIn = false
        removeUserProfile()
    }
    
    
    // MARK: - Function
    /// saveUserProfile
    func saveUserProfile(email: String) {
        nameUser = profile.nameUser
        emailUser = email
    }
    
    /// removeUserProfile
    func removeUserProfile() {
        nameUser = ""
        emailUser = ""
    }
    
    /// checkingTheInputSignUp
    func checkingTheInputSignUp() throws {
        
        guard !profile.email.isEmpty else {
            throw ErrorSignUp.invalidEmail
        }
        guard profile.password.count >= 5 else {
            throw ErrorSignUp.passwordIsLessThan6Characters
        }
        guard profile.password == profile.passwordCheck else {
            throw ErrorSignUp.passwordsDoNotMatch
            
        }
    }
    
    /// deleteCart
    func deleteCart(indexSet: IndexSet) {
        cart.remove(atOffsets: indexSet)
    }
    /// addFoodCart
    func addFoodCart(restaurantMenu: RestaurantMenu) {
        cart.append(restaurantMenu)
    }
    /// summaCartFood
    func summaCartFood() -> Double {
        var summa = 0.0
        for x in cart {
            summa += x.price
        }
        return summa
    }
    
    
}
