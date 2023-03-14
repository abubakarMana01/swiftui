//
//  Shapes.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 13/03/2023.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        Image("neymar")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
        
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
