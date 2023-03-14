//
//  Restaurant.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 14/03/2023.
//

import Foundation

struct Restaurant: Identifiable {
    let id = NSUUID().uuidString
    let imageName: String
    let name: String
    let rating: Float
}
