//
//  StateProperty.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 13/03/2023.
//

import SwiftUI

struct InstagramUiView: View {
    let posts = [
        Post(username: "neymarjr", image: "neymar", comments: [
            Comment(author: "cristiano", text: "Great match!!. Allez Paris!!🌟")
        ], likes: 10),
        Post(username: "leomessi", image: "neymar", comments: [
            Comment(author: "marcoverratti", text: "Next Munich!!🌟")
        ], likes: 100),
        Post(username: "cristiano", image: "neymar", comments: [
        ], likes: 200),
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(posts) { post in
                    PostView(post: post)
                }
            }
        }
    }
}

struct Instagram_Previews: PreviewProvider {
    static var previews: some View {
        InstagramUiView()
    }
}
