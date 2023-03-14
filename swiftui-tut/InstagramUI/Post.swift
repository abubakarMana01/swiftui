//
//  Post.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 14/03/2023.
//

import Foundation

struct Post: Identifiable {
    let id = NSUUID().uuidString
    let username: String
    let image: String
    let comments: [Comment]
    let likes: Int
}

struct Comment {
    let author: String
    let text: String
}
