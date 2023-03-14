//
//  MenuItem.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 14/03/2023.
//

import SwiftUI


struct MenuItemView: View {
    let menu: Restaurant
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(menu.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 140)
                .clipped()
            
            HStack {
                VStack(alignment: .leading) {
                    Text(menu.name)
                        .bold()
                        .font(.system(size: 18))
                    Text("$0.99 Delivery Fee | 30 - 40 min")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                
                Spacer()
                Text(String(menu.rating))
                    .padding(7)
                    .background(Color(.systemGray5))
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                    .cornerRadius(50)
            }
        }
        
    }
}


struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(menu: Restaurant(imageName: "neymar", name: "Burger King", rating: 4.5))
    }
}
