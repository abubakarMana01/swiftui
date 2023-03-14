//
//  UserEatsView.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 13/03/2023.
//

import SwiftUI

struct RestaurantsView: View {
    private let restaurants = [
        Restaurant(imageName: "neymar", name: "Pizza Hut", rating: 4.5),
        Restaurant(imageName: "neymar", name: "Pizza Hut", rating: 4.5),
        Restaurant(imageName: "neymar", name: "Pizza Hut", rating: 4.5),
        Restaurant(imageName: "neymar", name: "Pizza Hut", rating: 4.5),
        Restaurant(imageName: "neymar", name: "Pizza Hut", rating: 4.5)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Tampa Bay")
                .font(.largeTitle)
                .bold()
                .padding()
            
            ScrollView(showsIndicators: true) {
                VStack(spacing: 24) {
                    ForEach(restaurants) { restaurant in
                        MenuItemView(menu: restaurant)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct RestaurantsView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantsView()
    }
}
