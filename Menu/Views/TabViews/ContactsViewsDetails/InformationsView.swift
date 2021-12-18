//
//  InformationsView.swift
//  Menu
//
//  Created by Artem Paliutin on 18.12.2021.
//

import SwiftUI

struct InformationsView: View {
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            
            Text("Information")
                .font(.largeTitle)
                .foregroundColor(.orange)
        }
    }
}










struct InformationsView_Previews: PreviewProvider {
    static var previews: some View {
        InformationsView()
    }
}
