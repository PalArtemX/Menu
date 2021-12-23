//
//  DetailCartView.swift
//  Menu
//
//  Created by Artem Paliutin on 23.12.2021.
//

import SwiftUI

struct DetailCartView: View {
    
    let name: String
    let image: Image
    var price: Double
    @State private var quantityStepper: Double = 1
    
    
    @ObservedObject var vm: MenuViewModel
    
    
    var body: some View {
        HStack(alignment: .bottom) {
            
            HStack {
                ZStack(alignment: .topLeading) {
                    // MARK: - image
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .cornerRadius(5)
                    
                    // MARK: - Price and Name
                    HStack {
                        // MARK: - price
                        Text("\(price, specifier: "%.2f") $")
                            .font(.subheadline)
                        
                        // MARK: - name
                        Text(name)
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
            
            // MARK: Stepper and Button
            VStack(spacing: 0) {
                // MARK: - Stepper

                Stepper(value: $quantityStepper, in: 1...5) {
                    Text("X \(quantityStepper, specifier: "%.0f")")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                        .fontWeight(.black)
                }
                Spacer()
                
                HStack {
                    Image(systemName: "chevron.left.2")
                    Text("Delete")
                    Image(systemName: "chevron.left.2")
                }
                .font(.caption)
                .foregroundColor(.red)
                Spacer()
                // MARK: - Price
                Text("\(price, specifier: "%.2f") $")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(4)
                        .padding(.horizontal)
                        .background(.thinMaterial)
                        .cornerRadius(5)
                        .foregroundColor(.accentColor)
            }
        }
    }
    func priceQuantity(quantity: Double) -> Double {
         price * quantity
    }
    
}










struct DetailCartView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailCartView(name: "Name Foods", image: Image("soup"), price: 25.0, vm: MenuViewModel())
                .previewLayout(.sizeThatFits)
                .frame(height: 90)
                .padding()
            DetailCartView(name: "Name Foods", image: Image("soup"), price: 20.0, vm: MenuViewModel())
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .frame(height: 90)
                .padding()
        }
    }
}
