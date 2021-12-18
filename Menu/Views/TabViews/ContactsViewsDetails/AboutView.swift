//
//  AboutView.swift
//  Menu
//
//  Created by Artem Paliutin on 16.12.2021.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            
            VStack {
                Spacer()
                // MARK: - Logo
                Image(systemName: "fork.knife")
                    .font(Font.system(size: 150))
                    .padding()
                    .foregroundColor(.accentColor)
                
                // MARK: - Version
                Text("Version 1.0, Build 1")
                
                Spacer()
                // MARK: Footer
                VStack {
                    Text("The application was created for a portfolio")
                        .fontWeight(.light)
                    Text("Created by Artem Paliutin")
                        .fontWeight(.light)
                }
                .foregroundColor(.secondary)
                .font(.caption)
                
            }
        }
    }
}










struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AboutView()
            AboutView()
                .preferredColorScheme(.dark)
        }
    }
}
