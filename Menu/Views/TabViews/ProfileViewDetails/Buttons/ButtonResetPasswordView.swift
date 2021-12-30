//
//  ButtonResetPasswordView.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import SwiftUI

struct ButtonResetPasswordView: View {
    var body: some View {
        Section(header: Text("Reset your password")) {
            Button(action: {
                // cod
            }, label: {
                HStack {
                    Spacer()
                    Text("Reset Password")
                    Image(systemName: "ellipsis.rectangle")
                        .symbolRenderingMode(.hierarchical)
                    Spacer()
                }
                .foregroundColor(Color(.systemRed))
                .font(.headline)
            })
        }
    }
}









struct ButtonResetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonResetPasswordView()
    }
}
