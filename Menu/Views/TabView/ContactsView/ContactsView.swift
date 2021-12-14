//
//  ContactsView.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        VStack {
            // MARK: - MapView
            MapView()
                .frame(maxHeight: .infinity)
                .cornerRadius(20)
            // MARK: - Buttons
            HStack {
                // CALL
                Button {
                    //
                } label: {
                    Image(systemName: "phone")
                    Text("Call")
                }
                // CHAT
                Button {
                    //
                } label: {
                    Image(systemName: "bubble.right")
                    Text("Chat")
                }
            }
            .font(.headline)
            .buttonStyle(.bordered)
            .tint(.orange)
            .buttonBorderShape(.capsule)
            .padding()
            
            Divider()
            // MARK: - SocialNetworkView
            SocialNetworkView()
            Divider()
            // MARK: - About
            Text("About")
            Divider()
        }
        .ignoresSafeArea(edges: .top)
    }
}










struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContactsView()
            ContactsView()
                .preferredColorScheme(.dark)
        }
    }
}
