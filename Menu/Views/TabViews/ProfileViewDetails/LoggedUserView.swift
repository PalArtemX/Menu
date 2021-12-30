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
                // MARK: - Name
                Section(header: Text("Name")) {
                    Text(vm.nameUser)
                    HStack {
                        TextField(vm.nameUser.isEmpty ? "Enter name..." : "Enter new name...", text: $vm.profile.renameTextFieldName)
                        Button(action: {
                            vm.nameUser = vm.profile.renameTextFieldName
                            vm.profile.renameTextFieldName = ""
                        }, label: {
                            HStack {
                                Spacer()
                                Text(vm.nameUser.isEmpty ? "Add" : "Rename")
                                Image(systemName: vm.nameUser.isEmpty ? "plus.app" : "character.cursor.ibeam")
                                    .symbolRenderingMode(.hierarchical)
                                
                            }
                        })
                    }
                }
                // MARK: - Address
                Section(header: Text("Address")) {
                    Text(vm.addressUser)
                    HStack {
                        TextField(vm.addressUser.isEmpty ? "Enter address..." : "Enter new address...", text: $vm.profile.renameTextFieldAddress)
                        Button(action: {
                            vm.addressUser = vm.profile.renameTextFieldAddress
                            vm.profile.renameTextFieldAddress = ""
                        }, label: {
                            HStack {
                                Spacer()
                                Text(vm.addressUser.isEmpty ? "Add" : "Rename")
                                Image(systemName: vm.addressUser.isEmpty ? "plus.app" : "character.cursor.ibeam")
                                    .symbolRenderingMode(.hierarchical)
                                    
                                
                            }
                        })
                    }
                }
                // MARK: - Email
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
