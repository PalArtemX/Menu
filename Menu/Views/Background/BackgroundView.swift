//
//  BackgroundView.swift
//  Menu
//
//  Created by Artem Paliutin on 16.12.2021.
//

import SwiftUI

struct BackgroundView: View {
    
    @State private var isShow = false
    let opacity: Double = 0.09
    let durationAnimation: Double = 300
    
    var body: some View {
        ZStack {
            BackgroundShape()
                .opacity(opacity)
                .foregroundColor(.colorTheme.background1)
                .rotationEffect(Angle(degrees: isShow ? 360 : 0))
            
            BackgroundShape()
                .opacity(opacity)
                .foregroundColor(.colorTheme.background2)
                .rotationEffect(Angle(degrees: isShow ? 20 : 340))
            
            BackgroundShape()
                .opacity(opacity)
                .foregroundColor(.colorTheme.background3)
                .rotationEffect(Angle(degrees: isShow ? 340 : 20))

            BackgroundShape()
                .opacity(opacity)
                .foregroundColor(.colorTheme.background4)
                .rotationEffect(Angle(degrees: isShow ? 0 : 360))
            
        }
        .onAppear {
            withAnimation(
                Animation
                    .linear(duration: durationAnimation)
                    .repeatForever(autoreverses: false)) {
                        isShow.toggle()
                    }
        }
        .ignoresSafeArea()
    }
}










struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BackgroundView()
            BackgroundView()
                .preferredColorScheme(.dark)
        }
    }
}
