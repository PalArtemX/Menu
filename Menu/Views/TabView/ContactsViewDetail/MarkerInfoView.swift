//
//  MarkerInfoView.swift
//  Menu
//
//  Created by Artem Paliutin on 13.12.2021.
//

import SwiftUI

struct MarkerInfoView: View {
    
    @State private var isShowAnnotation = false
    let nameCafe: String
    
    var body: some View {
        VStack {
            // name
            HStack {
                Text(nameCafe)
                    .font(.callout)
                Image(systemName: "fork.knife")
            }
            // marker
            Image(systemName: "mappin.and.ellipse")
                .symbolRenderingMode(.hierarchical)
                .font(.largeTitle)
                .foregroundColor(.red)
                .onTapGesture {
                    isShowAnnotation.toggle()
                }
            // Info on Tap
            ContactAddressPhoneView(address: "Molodegny Prospect 2A", phone: "777-77-77", openingHours: "10:00 - 02:00")
                .opacity(isShowAnnotation ? 1 : 0)
        }
        .foregroundColor(.orange)
    }
}










struct MarkerInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MarkerInfoView(nameCafe: "Park Kultury")
    }
}
