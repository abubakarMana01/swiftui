//
//  GridView.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 14/03/2023.
//

import SwiftUI

struct GridView: View {
    private let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    let imageWidth = UIScreen.main.bounds.width / 3
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 1) {
                ForEach(0..<50, id: \.self) { index in
                    Rectangle()
                        .frame(width: imageWidth + 1.5, height: imageWidth)
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
