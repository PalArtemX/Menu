//
//  ShapeView.swift
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
            path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            
            
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            
        }
    }
}

// MARK: - ShapeView
struct ShapeView: View {
    var body: some View {
        Logo()
            .foregroundColor(.green)
            //.frame(width: 200, height: 200)
            .padding()
    }
}









struct ShapeLogoView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
