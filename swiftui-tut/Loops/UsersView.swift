//
//  ForEach.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 13/03/2023.
//

import SwiftUI

struct UsersView: View {
    let drivers = [
        Driver(name: "Lewis Hamilton", username: "lewis_hamilton", image: "neymar"),
        Driver(name: "Carlos Sainz", username: "carlos_sainz", image: "neymar"),
        Driver(name: "Valteri Bottas", username: "valteri_bottas", image: "neymar"),
        Driver(name: "Max Verstappen", username: "max_verstappen", image: "neymar"),
    ]
    
    var body: some View {
        VStack {
            ForEach(drivers) { driver in
                UserRowView(driver: driver)
            }
        }
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
