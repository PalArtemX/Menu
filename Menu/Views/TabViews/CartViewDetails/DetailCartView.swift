//
//  DetailCartView.swift
//  Menu
//
//  Created by Artem Paliutin on 23.12.2021.
//

import SwiftUI

struct DetailCartView: View {
    
    let restaurantMenu: RestaurantMenu
    
    var body: some View {
        HStack(alignment: .bottom) {
            
            HStack {
                ZStack(alignment: .topLeading) {
                    // MARK: - image
                    restaurantMenu.image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .cornerRadius(5)
                    
                    // MARK: - Price and Name
                    HStack {
                        // MARK: - price
//                        Text("\(price, specifier: "%.2f") $")
//                            .font(.subheadline)
                        // MARK: - name
                        Text(restaurantMenu.name)
                            .fontWeight(.bold)
                    }
                    .padding(3)
                    .background(.ultraThinMaterial)
                    .foregroundColor(.white)
                    .font(.caption)
                    .cornerRadius(5)
                    .padding(4)
                }
                Spacer()
            }
            // MARK: Stepper and Buttons
            VStack(spacing: 0) {
                // MARK: - Stepper
//                Stepper(value: $vm.food.quantityStepper , in: 1...5) {
//                    Text("X \(vm.food.quantityStepper, specifier: "%.0f")")
//                        .foregroundColor(.gray)
//                        .font(.subheadline)
//                        .fontWeight(.black)
//                }
                Spacer()
                // MARK: - Delete
                HStack(spacing: 1) {
                    Image(systemName: "chevron.left.2")
                    
                    Text("Delete")
                    Image(systemName: "chevron.left.2")
                }
                .symbolRenderingMode(.hierarchical)
                .font(.caption2)
                .foregroundColor(.red)
                Spacer()
                // MARK: - Price
                Text("\(restaurantMenu.price, specifier: "%.2f") $")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(5)
                        .padding(.horizontal)
                        .background(.thinMaterial)
                        .cornerRadius(5)
                        .foregroundColor(.accentColor)
            }
        }
    }
}










struct DetailCartView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailCartView(restaurantMenu: RestaurantMenu(image: Image("soup"), price: 23.35, name: "Soup"))
                .previewLayout(.sizeThatFits)
                .frame(height: 90)
                .padding()
            DetailCartView(restaurantMenu: RestaurantMenu(image: Image("soup"), price: 23.35, name: "Soup"))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .frame(height: 90)
                .padding()
        }
    }
}
