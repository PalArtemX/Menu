//
//  DetailsFoodMenu.swift
//  Menu
//
//  Created by Artem Paliutin on 21.12.2021.
//

import SwiftUI

struct DetailsFoodMenu: View {
    
    let restaurantMenu: RestaurantMenu
    let action: () -> ()
    
    @State private var showAddCart = false
    
    var body: some View {
        HStack(alignment: .bottom) {
            
            HStack {
                ZStack(alignment: .topLeading) {
                    // MARK: - image
                    restaurantMenu.image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .cornerRadius(5)
                    
                    // MARK: - Price and Name
                    HStack {
//                        // MARK: - price
//                        Text("\(price, specifier: "%.2f") $")
//                            .font(.headline)
                        // MARK: - name
                        Text(restaurantMenu.name)
                            .fontWeight(.bold)
                            
                    }
                    .padding(3)
                    .background(Color.black.opacity(0.3))
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .cornerRadius(5)
                    .padding(4)
                }
                Spacer()
            }
            // MARK: Stepper and Button
            VStack {
//                // MARK: - Stepper
//                Stepper(value: $quantity, in: 1...5) {
//                    Text("X \(quantity, specifier: "%.0f")")
//                        .foregroundColor(.gray)
//                        .font(.subheadline)
//                        .fontWeight(.black)
//                }
                Spacer()
                // MARK: - Button
                Button {
                    action()
                    withAnimation(.linear) {
                        showAddCart.toggle()
                    }
                } label: {
                    HStack {
                        Text("\(restaurantMenu.price, specifier: "%.2f") $")
                            .fontWeight(.bold)
                        Image(systemName: "cart")
                            .font(.headline)
                            .rotationEffect(Angle(degrees: showAddCart ? 0 : 360))
                    }
                    .padding(.horizontal)
                    .font(.subheadline)
                }
            .buttonStyle(.bordered)
            }
        }
    }
}










struct DetailsFoodMenu_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            DetailsFoodMenu(restaurantMenu: RestaurantMenu(image: Image("soup"), price: 23.35, name: "Soup"), action: {})
                .previewLayout(.sizeThatFits)
                .padding()
                
            DetailsFoodMenu(restaurantMenu: RestaurantMenu(image: Image("soup"), price: 23.35, name: "Soup"), action: {})
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
        .frame(height: 160)
    }
}
