//
//  ShapeLogoView.swift
//  Menu
//
//  Created by Artem Paliutin on 16.12.2021.
//

import SwiftUI

// MARK: - Shape
struct Logo: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.minY, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.midX / 2, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
            
            path.addArc(center: CGPoint(x: rect.midX + 30, y:rect.midY), radius: rect.width / 3, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
        
        }
    }
}

// MARK: - ShapeLogoView
struct ShapeLogoView: View {
    var body: some View {
        Logo()
            .foregroundColor(.accentColor)
            //.frame(width: 200, height: 200)
    }
}









struct ShapeLogoView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeLogoView()
    }
}
