//
//  ButtonsAboutInfoView.swift
//  Menu
//
//  Created by Artem Paliutin on 18.12.2021.
//

import SwiftUI

struct ButtonsAboutInfoView: View {
    
    @State private var showAboutView = false
    @State private var showInfoView = false
    @State private var showDeliveryView = false
    
    var body: some View {
        HStack {
            // MARK: - Delivery
            Button(action: {
                showDeliveryView.toggle()
            }, label: {
                Image(systemName: "shippingbox")
                Text("Delivery")
            })
                .sheet(isPresented: $showDeliveryView, onDismiss: nil) {
                    DeliveryView()
                }
            // MARK: - Info
            Button(action: {
                showInfoView.toggle()
            }, label: {
                Image(systemName: "info.circle")
                Text("Info")
            })
                .sheet(isPresented: $showInfoView, onDismiss: nil) {
                    InformationsView()
                }
            // MARK: - About
            Button(action: {
                showAboutView.toggle()
            }, label: {
                Image(systemName: "rectangle.portrait")
                Text("About")
            })
                .sheet(isPresented: $showAboutView, onDismiss: nil) {
                    AboutView()
                }
        }
        .buttonStyle(.bordered)
        .tint(.orange)
        .font(.subheadline)
    }
}










struct ButtonAbout_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ButtonsAboutInfoView()
                .previewLayout(.sizeThatFits)
            .padding()
            ButtonsAboutInfoView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
