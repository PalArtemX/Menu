//
//  ButtonLoggedLogOutView.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import SwiftUI

struct ButtonLoggedLogOutView: View {
    
    @ObservedObject var vm: MenuViewModel
    @State private var showActionSheet = false
    
    var body: some View {
        HStack {
            Text("log out and delete name?")
                .foregroundColor(Color(.systemGray3))
            Button(action: {
                //vm.signOut()
                showActionSheet.toggle()
            }, label: {
                HStack {
                    Text("Log Out")
                    Image(systemName: "person.badge.minus")
                }
                .foregroundColor(Color(.systemRed))
                .padding()
            })
            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(title: Text("Log out of your account?"), message: Text("When you exit, the user's information will be deleted!"), buttons: [.cancel(), .destructive(Text("Log Out and Delete"), action: {
                    vm.signOut()
                })])
            }
        }
        
    }
}









struct ButtonLoggedLogOutView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLoggedLogOutView(vm: MenuViewModel())
    }
}
