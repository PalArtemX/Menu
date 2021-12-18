//
//  CartView.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            
            Image(systemName: "cart")
        }
    }
}










struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
