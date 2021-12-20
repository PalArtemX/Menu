//
//  HeaderLogoView.swift
//  Menu
//
//  Created by Artem Paliutin on 20.12.2021.
//

import SwiftUI

struct HeaderLogoView: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                Image(systemName: "fork.knife")
                Text(vm.menu.nameCafe)
            }
            .font(.title)
            Text("Restaurant & Delivery")
                .font(.subheadline)
                .fontWeight(.light)
        }
        .foregroundColor(.accentColor)
    }
}










struct HeaderLogoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderLogoView(vm: MenuViewModel())
                .previewLayout(.sizeThatFits)
                .padding()
            HeaderLogoView(vm: MenuViewModel())
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
