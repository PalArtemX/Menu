//
//  RestaurantMenuView.swift
//  Menu
//
//  Created by Artem Paliutin on 21.12.2021.
//

import SwiftUI

struct RestaurantMenuView: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        List {
            Section("Salad") {
                HStack {
                    vm.restaurantMenu[0].image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 170)
                    VStack {
                        Text(vm.restaurantMenu[0].name)
                        Text("\(vm.restaurantMenu[0].price, specifier: "%.2f") $")
                        Button {
                            //
                        } label: {
                            Text("Bue")
                        }

                    }
                }
                
                
                HStack {
                    vm.restaurantMenu[0].image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 170)
                    VStack {
                        Text(vm.restaurantMenu[0].name)
                        Text("\(vm.restaurantMenu[0].price, specifier: "%.2f") $")
                        Button {
                            //
                        } label: {
                            Text("Bue")
                        }

                    }
                }
                
            }
            
            Section {
                HStack {
                    vm.restaurantMenu[0].image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 170)
                    VStack {
                        Text(vm.restaurantMenu[0].name)
                        Text("\(vm.restaurantMenu[0].price, specifier: "%.2f") $")
                        Button {
                            //
                        } label: {
                            Text("Bue")
                        }

                    }
                }
            } header: {
                Image(systemName: "plus")
            }

        }
        //.foregroundColor(.accentColor)
        .listStyle(.plain)
    }
}










struct RestaurantMenuView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantMenuView(vm: MenuViewModel())
    }
}
