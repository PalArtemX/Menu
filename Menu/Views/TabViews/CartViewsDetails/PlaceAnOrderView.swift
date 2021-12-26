//
//  PlaceAnOrderView.swift
//  Menu
//
//  Created by Artem Paliutin on 26.12.2021.
//

import SwiftUI

struct PlaceAnOrderView: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        VStack {
            HStack {
                // MARK: - Count Cart
                HStack {
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                        .symbolRenderingMode(.hierarchical)
                    Text("\(vm.cart.count)")
                }
                
                Spacer()
                
                // MARK: - Summa price
                HStack {
                    Image(systemName: "dollarsign.square")
                        .font(.title2)
                        .symbolRenderingMode(.hierarchical)
                    Text("\(vm.summaCartFood(), specifier: "%.2f")")
                }
                
                    
            }
            .font(.headline)
            .padding(5)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .foregroundColor(.accentColor)
            
            // MARK: - Button
            Button {
                // CODE
            } label: {
                Text("Place An Order For \(vm.summaCartFood(), specifier: "%.2f") $")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding(.horizontal)
    }
}










struct PlaceAnOrderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlaceAnOrderView(vm: MenuViewModel())
                .previewLayout(.sizeThatFits)
            .padding()
            PlaceAnOrderView(vm: MenuViewModel())
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
