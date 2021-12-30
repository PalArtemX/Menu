//
//  RegistrationView.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import SwiftUI

struct RegistrationView: View {
    
    @ObservedObject var vm: MenuViewModel
    @Environment(\.presentationMode) var presentationMode
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                // MARK: - Form Registration
                Form {
                    Section(header: Text("Email", comment: "Section: Email")) {
                        TextField("Enter email...", text: $vm.profile.email)
                            .keyboardType(.emailAddress)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                    }
                    
                    Section(header: Text("Password", comment: "Section: Password")) {
                        SecureField("Enter password...", text: $vm.profile.password)
                        SecureField("Enter password again...", text: $vm.profile.passwordCheck)
                    }
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                } // Form
                // MARK: - Button "Sign Up"
                ButtonSignUpView(vm: vm, presentationMode: _presentationMode, showAlert: $showAlert)
                    .padding()
            }
            .navigationTitle("Registration")
        } // NavigationView
    }
}










struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView(vm: MenuViewModel())
    }
}
