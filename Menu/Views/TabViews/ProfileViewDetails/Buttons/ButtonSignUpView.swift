//
//  ButtonSignUpView.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import SwiftUI

struct ButtonSignUpView: View {
    
    @ObservedObject var vm: MenuViewModel
    @Environment(\.presentationMode) var presentationMode
    @State private var message = ""
    @Binding var showAlert: Bool
    
    var body: some View {
        Button(action: {
            
             do {
                try vm.checkingTheInputSignUp()
                 vm.signUp(email: vm.profile.email, password: vm.profile.password)
                 presentationMode.wrappedValue.dismiss()
            } catch ErrorSignUp.invalidEmail {
                message = "Email is not entered or entered incorrectly!"
                showAlert.toggle()
            } catch ErrorSignUp.passwordIsLessThan6Characters {
                message = "Password must have at least 6 characters!"
                showAlert.toggle()
            } catch ErrorSignUp.passwordsDoNotMatch {
                message = "Passwords don't match!"
                showAlert.toggle()
            } catch {
                print("Error")
            }

        }, label: {
            HStack {
                Spacer()
                Text("Sign Up")
                Image(systemName: "person.badge.plus")
                    .symbolRenderingMode(.hierarchical)
                Spacer()
            }
        })
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Attention"), message: Text(message), dismissButton: .cancel())
        })
    }
}









struct ButtonSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSignUpView(vm: MenuViewModel(), showAlert: .constant(false))
    }
}
