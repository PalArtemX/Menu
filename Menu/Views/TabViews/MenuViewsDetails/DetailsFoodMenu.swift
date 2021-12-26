//
//  DetailsFoodMenu.swift
//  Menu
//
//  Created by Artem Paliutin on 21.12.2021.
//

import SwiftUI

struct DetailsFoodMenu: View {
    
    let name: String
    let image: Image
    let price: Double
    //@State private var quantity: Double = 1
    let action: () -> ()
    
    
    var body: some View {
        HStack(alignment: .bottom) {
            
            HStack {
                ZStack(alignment: .topLeading) {
                    // MARK: - image
                    image
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
                        Text(name)
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
                } label: {
                    HStack {
                        Text("\(price, specifier: "%.2f") $")
                            .fontWeight(.bold)
                        Image(systemName: "cart")
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
            DetailsFoodMenu(name: "Garden Fresh", image: Image("salat"), price: 10.20, action: {})
                .previewLayout(.sizeThatFits)
                .padding()
                
            DetailsFoodMenu(name: "Garden Fresh", image: Image("salat"), price: 10.20, action: {})
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
        .frame(height: 160)
    }
}
