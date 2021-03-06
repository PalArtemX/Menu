//
//  UserPhotoView.swift
//  Menu
//
//  Created by Artem Paliutin on 30.12.2021.
//

import SwiftUI

struct UserPhotoView: View {
    
    @State private var isShowing = false
    @State private var avatarImage = UIImage(named: "avatar")!
    
    var body: some View {
        VStack {
            // MARK: - Image
            Image(uiImage: avatarImage)
                .resizable()
                .scaledToFit()
                .clipShape(Circle(), style: FillStyle())
                .frame(maxHeight: 100)
            
            // MARK: - Button
            Button(action: {
                isShowing.toggle()
            }, label: {
                HStack {
                    Text("Add a Photo")
                    Image(systemName: "person.fill.viewfinder")
                        .symbolRenderingMode(.hierarchical)
                }
            })
        }
        .sheet(isPresented: $isShowing, content: {
            PhotoPicker(avatarImage: $avatarImage)
        })
    }
}










struct UserPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UserPhotoView()
                .previewLayout(.sizeThatFits)
            .padding()
            UserPhotoView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
