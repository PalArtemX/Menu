//
//  LoginView.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var vm: MenuViewModel
    @State private var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    // MARK: - User Sing In
                    Section(header: Text("email")) {
                        TextField("enter email", text: $vm.profile.email)
                            .keyboardType(.emailAddress)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    
                    Section(header: Text("password")) {
                        SecureField("enter pasword", text: $vm.profile.password)
                    }
                    
                    // MARK: - Button "Login"
                    Section {
                        ButtonLogin(vm: vm)
                    }
                } // Form
                
                // MARK: - Button "Sign Up"
                SignUpView(isPresented: $isPresented)
                
                
            } // VStack
            .sheet(isPresented: $isPresented, content: { RegistrationView(vm: vm) })
            .navigationTitle("Login")
        } // NavigationView
    }
}









struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(vm: MenuViewModel())
    }
}
