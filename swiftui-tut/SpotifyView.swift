//
//  Stacks.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 13/03/2023.
//

import SwiftUI

struct SpotifyView: View {
    var body: some View {
        VStack(spacing: 32) {
            
            VStack (alignment: .leading) {
                Text("Your top genres")
                    .font(.system(size: 18, weight: .semibold))
                
                
                HStack (spacing: 12) {
                    ZStack(alignment: .bottomTrailing) {
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 180, height: 100)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.11, saturation: 0.966, brightness: 0.818)/*@END_MENU_TOKEN@*/)
                            
                            
                            Text("Hip-Hop")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                        }
                        
                        Image("neymar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .rotationEffect(.degrees(30))
                            .offset(x: 16)
                    }
                    .cornerRadius(10)
                    .clipped()
                    
                    ZStack(alignment: .bottomTrailing) {
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 180, height: 100)
                                .foregroundColor(.purple)
                            
                            
                            Text("Pop")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                        }
                        
                        Image("neymar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .rotationEffect(.degrees(30))
                            .offset(x: 16)
                    }
                    .cornerRadius(10)
                    .clipped()
                }
            }
            
            VStack (alignment: .leading) {
                Text("Featured podcast categories")
                    .font(.system(size: 18, weight: .semibold))
                
                
                HStack (spacing: 12) {
                    ZStack(alignment: .bottomTrailing) {
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 180, height: 100)
                                .foregroundColor(.pink)
                            
                            
                            Text("Hip-Hop")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                        }
                        
                        Image("neymar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .rotationEffect(.degrees(30))
                            .offset(x: 16)
                    }
                    .cornerRadius(10)
                    .clipped()
                    
                    ZStack(alignment: .bottomTrailing) {
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 180, height: 100)
                                .foregroundColor(.blue)
                            
                            
                            Text("Pop")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                        }
                        
                        Image("neymar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .rotationEffect(.degrees(30))
                            .offset(x: 16)
                    }
                    .cornerRadius(10)
                    .clipped()
                }
            }
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Browse all")
                    .font(.system(size: 18, weight: .semibold))
                
                
                HStack (spacing: 12) {
                    ZStack(alignment: .bottomTrailing) {
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 180, height: 100)
                                .foregroundColor(.indigo)
                            
                            
                            Text("Hip-Hop")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                        }
                        
                        Image("neymar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .rotationEffect(.degrees(30))
                            .offset(x: 16)
                    }
                    .cornerRadius(10)
                    .clipped()
                    
                    ZStack(alignment: .bottomTrailing) {
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 180, height: 100)
                                .foregroundColor(.orange)
                            
                            
                            Text("Pop")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                        }
                        
                        Image("neymar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .rotationEffect(.degrees(30))
                            .offset(x: 16)
                    }
                    .cornerRadius(10)
                    .clipped()
                }
                HStack (spacing: 12) {
                    ZStack(alignment: .bottomTrailing) {
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 180, height: 100)
                                .foregroundColor(.red)
                            
                            
                            Text("Hip-Hop")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                        }
                        
                        Image("neymar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .rotationEffect(.degrees(30))
                            .offset(x: 16)
                    }
                    .cornerRadius(10)
                    .clipped()
                    
                    ZStack(alignment: .bottomTrailing) {
                        ZStack(alignment: .topLeading) {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 180, height: 100)
                                .foregroundColor(.teal)
                            
                            
                            Text("Pop")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                        }
                        
                        Image("neymar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .rotationEffect(.degrees(30))
                            .offset(x: 16)
                    }
                    .cornerRadius(10)
                    .clipped()
                }
            }
        }
    }
}

struct SpotifyView_Previews: PreviewProvider {
    static var previews: some View {
        SpotifyView()
    }
}
