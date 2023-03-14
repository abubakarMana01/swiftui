//
//  ContentView.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 12/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        Text("Hello world")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
