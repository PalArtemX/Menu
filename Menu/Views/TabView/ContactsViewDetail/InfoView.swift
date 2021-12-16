//
//  InfoView.swift
//  Menu
//
//  Created by Artem Paliutin on 16.12.2021.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack {
            Spacer()
            // MARK: - Logo
            Image(systemName: "applelogo")
                .font(Font.system(size: 150))
                .padding()
            
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










struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InfoView()
            InfoView()
                .preferredColorScheme(.dark)
        }
    }
}
