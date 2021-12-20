//
//  MarkerInfoView.swift
//  Menu
//
//  Created by Artem Paliutin on 13.12.2021.
//

import SwiftUI

struct MarkerInfoView: View {
    
    @State private var isShowAnnotationMap = false
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        VStack {
            // MARK: - Name
            VStack(alignment: .trailing) {
                HStack {
                    Image(systemName: "fork.knife")
                    Text(vm.menu.nameCafe)
                        
                    
                }
                .font(.title3)
                Text("Restaurant & Delivery")
                    .font(.caption2)
                    .fontWeight(.light)
            }
            // MARK: - Marker
            Image(systemName: "mappin.and.ellipse")
                .symbolRenderingMode(.hierarchical)
                .font(.largeTitle)
                .foregroundColor(.red)
                .onTapGesture {
                    isShowAnnotationMap.toggle()
                }
            // MARK: - Info on Tap
            ContactAddressPhoneView(vm: vm)
                .opacity(isShowAnnotationMap ? 1 : 0)
        }
        .foregroundColor(.orange)
    }
}










struct MarkerInfoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MarkerInfoView(vm: MenuViewModel())
                .previewLayout(.sizeThatFits)
            .padding()
            MarkerInfoView(vm: MenuViewModel())
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
