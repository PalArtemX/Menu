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
    @State private var quantity: Double = 1
    let action: () -> ()
    
    
    var body: some View {
        HStack {
            VStack {
                // MARK: - Stepper
                Stepper(value: $quantity, in: 1...5) {
                    Text("x \(quantity, specifier: "%.0f") ")
                        .font(.headline)
                        .foregroundColor(.orange)
                }
                // MARK: - Image
                image
                    .resizable()
                    .cornerRadius(7)
                    .scaledToFit()
                    .frame(height: 170)
            }
            VStack(alignment: .trailing) {
                // MARK: - Price
                Text("\(price, specifier: "%.2f") $")
                    .font(.headline)
                    .foregroundColor(.gray)
                // MARK: - Name
                Text(name)
                    .font(.headline)
                // MARK: - Add to Cart
                Button {
                    action()
                } label: {
                    VStack {
                        HStack {
                            Text("\(price * quantity, specifier: "%.2f") $")
                        }
                        Image(systemName: "cart")
                            .font(.largeTitle)
                        //Text("Add to Cart")
                    }
                    
                }
                .buttonStyle(.bordered)

            }
        }
    }
}










struct DetailsFoodMenu_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            DetailsFoodMenu(name: "Garden fresh", image: Image("salat"), price: 10.20, action: {})
                .previewLayout(.sizeThatFits)
            .padding()
            DetailsFoodMenu(name: "Garden fresh", image: Image("salat"), price: 10.20, action: {})
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
