//
//  ProfileView.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            
            Image(systemName: "person")
        }
    }
}










struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
