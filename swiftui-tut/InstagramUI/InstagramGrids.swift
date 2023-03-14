//
//  InstagramGrids.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 14/03/2023.
//

import SwiftUI

struct InstagramGrids: View {
    @Environment (\.colorScheme) var colorScheme: ColorScheme
    
    let gridColumns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    let imageDimension = UIScreen.main.bounds.width / 3
    let screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    // Header
                    HStack {
                        Image(systemName: "chevron.left")
                            .font(.title2)
                        
                        Spacer()
                        Text("neymarjr")
                            .fontWeight(.bold)
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(.blue)
                            .font(.caption)
                        
                        Spacer()
                        
                        Image(systemName: "ellipsis")
                            .font(.caption)
                            .imageScale(.large)
                    }
                    
                    // Profile image + stats
                    HStack {
                        Image("neymar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        // Stats
                        HStack(spacing: 30) {
                            VStack(spacing: 3) {
                                Text("3,726")
                                    .fontWeight(.semibold)
                                    .font(.subheadline)
                                Text("Posts")
                                    .font(.caption)
                                    .fontWeight(.light)
                                
                            }
                            
                            VStack(spacing: 3) {
                                Text("393M")
                                    .fontWeight(.semibold)
                                    .font(.subheadline)
                                Text("Followers")
                                    .font(.caption)
                                    .fontWeight(.light)
                                
                            }
                            
                            VStack(spacing: 3) {
                                Text("493")
                                    .fontWeight(.semibold)
                                    .font(.subheadline)
                                Text("Following")
                                    .font(.caption)
                                    .fontWeight(.light)
                            }
                        }
                    }
                    .padding(.top)
                    .padding(.bottom, 8)
                    
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Neymar Da Silva")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("www.neymarjr.com")
                            .font(.caption)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                    
                    // Common followers
                    HStack(spacing: -12) {
                        CommonFollowersImage(image: "neymar")
                        CommonFollowersImage(image: "back")
                        CommonFollowersImage(image: "neymar")
                        
                        HStack(spacing: 3) {
                            Text("Followed by")
                            
                            Text("leomessi, kmbappe7")
                                .fontWeight(.semibold)
                            
                            Text("and")
                            
                            Text("146 others")
                                .fontWeight(.semibold)
                        }
                        .font(.caption)
                        .padding(.leading)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text("Following")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .frame(width: screenWidth / 3, height: 34)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(colorScheme == .dark ? Color.white : Color(.systemGray4))
                            )
                        
                        Text("Message")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .frame(width: screenWidth / 3, height: 34)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(colorScheme == .dark ? Color.white : Color(.systemGray4))
                            )
                        
                        Image(systemName: "person.badge.plus")
                            .frame(width: 32, height: 34)
                            .font(.footnote)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .stroke(colorScheme == .dark ? Color.white : Color(.systemGray4))
                            )
                    }
                    .padding(.top, 4)
                    
                    // Grid action buttons
                    HStack {
                        Image(systemName: "squareshape.split.3x3")
                            .font(.title2)
                        
                        Spacer()
                        Image(systemName: "play.rectangle")
                            .font(.title2)
                        
                        Spacer()
                        Image(systemName: "person.crop.square")
                            .font(.title2)
                        
                    }
                    .padding(.top, 14)
                    .frame(maxWidth: screenWidth * 0.7)
                    .foregroundColor(Color("InstagramGridActionButtonScheme"))
                }
                .padding([.horizontal, .bottom])
            }
            
            LazyVGrid(columns: gridColumns, spacing: 1) {
                ForEach(0..<10, id: \.self) { index in
                    Image("neymar")
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageDimension + 1.5, height: imageDimension)
                        .clipped()
                }
            }
            .offset(y: -5)
        }
    }
}

struct InstagramGrids_Previews: PreviewProvider {
    static var previews: some View {
        InstagramGrids()
    }
}

struct CommonFollowersImage: View {
    @Environment (\.colorScheme) var colorScheme: ColorScheme
    
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: 32, height: 32)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(colorScheme == .dark ? .gray : .white, lineWidth: 2)
            )
    }
}
