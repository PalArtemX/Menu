//
//  BackgroundView.swift
//  Menu
//
//  Created by Artem Paliutin on 16.12.2021.
//

import SwiftUI

struct BackgroundView: View {
    
    @State private var isShow = false
    
    var body: some View {
        Logo()
            .opacity(0.3)
            .foregroundColor(.green)
            .rotationEffect(Angle(degrees: isShow ? 0 : 360))
            .cornerRadius(30)
            .onAppear {
                withAnimation(
                    Animation
                        .linear(duration: 50)
                        .repeatForever(autoreverses: false)) {
                            isShow.toggle()
                        }
            }
            .ignoresSafeArea()
    }
}










struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
