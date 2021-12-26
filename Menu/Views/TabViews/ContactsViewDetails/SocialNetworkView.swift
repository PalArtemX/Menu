//
//  SocialNetworkView.swift
//  Menu
//
//  Created by Artem Paliutin on 13.12.2021.
//

import SwiftUI

struct SocialNetworkView: View {
    
    let width: CGFloat = 33
    
    // MARK: URLs
    let vkURL = URL(string: "https://vk.com")
    let facebookURL = URL(string: "https://www.facebook.com")
    let instagramURL = URL(string: "https://www.instagram.com")
    let youtubeURL = URL(string: "https://www.youtube.com")
    
    var body: some View {
        HStack {
            // MARK: - VK
            Link(destination: vkURL!) {
                Image("VKLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: width)
                    .padding()
            }
            // MARK: - Facebook
            Link(destination: facebookURL!) {
                Image("FacebookLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: width)
                    .padding()
            }
            // MARK: - Instagram
            Link(destination: instagramURL!) {
                Image("InstagramLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: width)
                    .padding()
            }
            // MARK: - YouTube
            Link(destination: youtubeURL!) {
                Image("YouTubeLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: width)
                    .padding()
            }
        }
    }
}










struct SocialNetworkView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SocialNetworkView()
                .previewLayout(.sizeThatFits)
            .padding()
            SocialNetworkView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
