//
//  SignUpView.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import SwiftUI

struct SignUpView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        HStack {
            Text("Don't have an account?", comment: "Button Sing Up")
                .foregroundColor(Color(.systemGray3))
            
            Button(action: {
                isPresented.toggle()
            }, label: {
                HStack {
                    Text("Sign Up")
                    Image(systemName: "person.badge.plus")
                        .symbolRenderingMode(.hierarchical)
                }
                .padding()
            })
        }

    }
}








struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SignUpView(isPresented: .constant(false))
                .previewLayout(.sizeThatFits)
            .padding()
            SignUpView(isPresented: .constant(false))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
