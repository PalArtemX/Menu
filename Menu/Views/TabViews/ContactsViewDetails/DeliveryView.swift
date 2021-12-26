//
//  DeliveryView.swift
//  Menu
//
//  Created by Artem Paliutin on 18.12.2021.
//

import SwiftUI

struct DeliveryView: View {
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            
            Image(systemName: "shippingbox")
                .font(.largeTitle)
                .foregroundColor(.orange)
        }
    }
}









struct DeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryView()
    }
}
