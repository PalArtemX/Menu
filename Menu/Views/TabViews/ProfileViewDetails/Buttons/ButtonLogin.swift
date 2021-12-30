//
//  ButtonLogin.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import SwiftUI

struct ButtonLogin: View {
    
    @ObservedObject var vm: MenuViewModel
    @State private var showAlert = false
    
    var body: some View {
        Button(action: {
            guard !vm.profile.email.isEmpty, vm.profile.password.count >= 6 else {
                showAlert.toggle()
                return }
            
            vm.signIn(email: vm.profile.email, password: vm.profile.password)
            
            vm.profile.email = ""
            vm.profile.password = ""
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                if vm.isSignedIn == false {
                    showAlert.toggle()
                }
            }
        }, label: {
            HStack {
                Spacer()
                Text("Login")
                Image(systemName: "person")
                    .symbolRenderingMode(.hierarchical)
                Spacer()
            }
            .font(.headline)
        })
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Attention"), message: Text("Email or password is incorrect"), dismissButton: .cancel())
        })
    }
}









struct ButtonLogin_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLogin(vm: MenuViewModel())
    }
}
