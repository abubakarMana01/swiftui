//
//  InstagramPostView.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 14/03/2023.
//

import SwiftUI

struct PostView: View {
    let post: Post
    
    @Environment (\.colorScheme) var colorScheme: ColorScheme
    
    @State var likes = 1046
    @State var isPostLiked = false
    
    var body: some View {
        VStack(alignment: .leading) {
            // User profile photo and username
            HStack {
                Image(post.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                
                Text(post.username)
                    .font(.subheadline)
                    .bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
                    .font(.caption)
                
                Spacer()
                
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 8)
            
            // Post
            Image(post.image)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipped()
            
            // Post Action buttons
            HStack(spacing: 16) {
                Button(action: {
                    if isPostLiked {
                        if likes == 0 {
                            return
                        }
                        likes-=1
                        isPostLiked = false
                    } else {
                        likes+=1
                        isPostLiked = true
                    }
                }) {
                    Image(systemName: isPostLiked ? "heart.fill" : "heart")
                        .font(.system(size: 17, weight: .semibold))
                        .imageScale(.large)
                    //                        .foregroundColor(likeImageColor)
                        .foregroundColor(isPostLiked ? .red : (colorScheme == .dark ? Color.white : Color.black))
                    
                }
                
                Button(action: {}) {
                    Image(systemName: "bubble.right")
                        .font(.system(size: 15, weight: .semibold))
                        .imageScale(.large)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
                
                Button(action: {}) {
                    Image(systemName: "paperplane")
                        .font(.system(size: 15, weight: .semibold))
                        .imageScale(.large)
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 6)
            
            VStack(alignment: .leading) {
                Text("\(likes) \(likes == 1 ? "like" : "likes")")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                if (post.comments.count != 0) {
                    HStack(spacing: 4) {
                        Text(post.comments[0].author)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text(post.comments[0].text)
                            .font(.subheadline)
                    }
                }
            }
            .padding(.horizontal, 8)
            .padding(.top, 2)
            
            Spacer()
        }
    }
}


struct InstagramPostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post(username: "lewishamilton", image: "neymar", comments: [
            Comment(author: "messi", text: "Billionaire. Star player🌟")
        ], likes: 33))
    }
}
