//
//  LoggedUserView.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import SwiftUI

struct LoggedUserView: View {
    
    @ObservedObject var vm: MenuViewModel
    
    var body: some View {
        VStack {
            UserPhotoView()
            
            Form {
                Section(header: Text("Name")) {
                    Text(vm.nameUser)
                    HStack {
                        TextField("Enter new name...", text: $vm.profile.renameTextField)
                        Button(action: {
                            vm.nameUser = vm.profile.renameTextField
                            vm.profile.renameTextField = ""
                        }, label: {
                            HStack {
                                Spacer()
                                Text(vm.nameUser.isEmpty ? "Add Name" : "Rename")
                                Image(systemName: vm.nameUser.isEmpty ? "text.badge.plus" : "text.redaction")
                                
                            }
                        })
                    }
                }
                
                Section(header: Text("Email")) {
                    Text(vm.emailUser)
                }
                
                // MARK: - Button Reset Password
                ButtonResetPasswordView()
            }
            
            // MARK: - Button Log Out
            ButtonLoggedLogOutView(vm: vm)
        }
    }
}









struct LoggedUserView_Previews: PreviewProvider {
    static var previews: some View {
        LoggedUserView(vm: MenuViewModel())
    }
}
