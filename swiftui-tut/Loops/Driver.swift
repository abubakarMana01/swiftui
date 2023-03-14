//
//  Driver.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 14/03/2023.
//

import Foundation

struct Driver: Identifiable {
    let id = NSUUID().uuidString
    let name: String
    let username: String
    let image: String
}
