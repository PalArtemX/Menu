//
//  ButtonResetPasswordView.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import SwiftUI

struct ButtonResetPasswordView: View {
    var body: some View {
        // MARK: Header section
        Section(header: Text("Reset your password")) {
            
            // MARK: - Button
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
        Group {
            ButtonResetPasswordView()
                .previewLayout(.sizeThatFits)
            .padding()
            ButtonResetPasswordView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
