//
//  UserRowView.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 14/03/2023.
//

import SwiftUI

struct UserRowView: View {
//    let driverName: String
    let driver: Driver
    
    var body: some View {
        HStack (spacing: 12) {
            Image(driver.image)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(driver.name)
                    .fontWeight(.semibold)
                Text(driver.username)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image(systemName: "paperplane.circle.fill")
                .font(.title)
                .foregroundColor(.accentColor)
            
        }
        .padding(.horizontal)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView(driver: Driver(name: "Max Verstappen", username: "maxverstappen", image: "neymar"))
    }
}
