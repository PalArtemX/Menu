//
//  ButtonsContactsView.swift
//  Menu
//
//  Created by Artem Paliutin on 14.12.2021.
//

import SwiftUI

struct ButtonsContactsView: View {
    var body: some View {
        HStack {
            // MARK: - Call
            Button {
                //
            } label: {
                Image(systemName: "phone")
                Text("Call")
            }
            // MARK: - Chat
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
    }
}










struct ButtonsContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsContactsView()
    }
}
