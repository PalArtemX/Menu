//
//  ButtonsContactsView.swift
//  Menu
//
//  Created by Artem Paliutin on 14.12.2021.
//

import SwiftUI

struct ButtonsContactsView: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        HStack {
            // MARK: - Call
            // FIXME: - Hard cod tel
            Link(destination: URL(string: "tel:\(vm.menu.numberPhone)")!) {
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
        Group {
            ButtonsContactsView(vm: MenuViewModel())
                .previewLayout(.sizeThatFits)
            .padding()
            ButtonsContactsView(vm: MenuViewModel())
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}