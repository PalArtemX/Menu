//
//  ProfileView.swift
//  Menu
//
//  Created by Artem Paliutin on 12.12.2021.
//

import SwiftUI

struct ProfileView: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        ZStack {
            // MARK: - Background
            BackgroundView()
            
            VStack {
                if vm.profile.signedIn {
                    // MARK: - LoggedUser
                    LoggedUserView(vm: vm)
                } else {
                    // MARK: - Login
                    LoginView(vm: vm)
                }
            }
            .onAppear {
                vm.profile.signedIn = vm.isSignedIn
            }
        }
    }
}










struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(vm: MenuViewModel())
    }
}
