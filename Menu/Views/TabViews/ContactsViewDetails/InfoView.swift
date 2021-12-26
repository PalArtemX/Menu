//
//  InfoView.swift
//  Menu
//
//  Created by Artem Paliutin on 18.12.2021.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            
            Image(systemName: "info.circle")
                .font(.largeTitle)
                .foregroundColor(.orange)
        }
    }
}










struct InformationsView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
