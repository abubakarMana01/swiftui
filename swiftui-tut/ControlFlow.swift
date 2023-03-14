//
//  ControlFlow.swift
//  swiftui-tut
//
//  Created by Abubakar Mana on 14/03/2023.
//

import SwiftUI

struct ControlFlow: View {
    @State var darkModeEnabled = true
    @State var notificationsEnabled = false
    @State var faceIdEnabled = false
    
    var backgroundColor: Color {
        print(darkModeEnabled)
        return darkModeEnabled ? Color.black : Color.white
    }
    
    var rowBackgroundColor: Color {
        return darkModeEnabled ? Color.white.opacity(0.1) : Color(.systemGroupedBackground)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
                .foregroundColor(darkModeEnabled ? Color.white : Color.black)
            
            VStack(alignment: .leading) {
                
                Text("Appearance")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                
                Toggle(isOn: $darkModeEnabled) {
                    HStack {
                        Image(systemName: "moon.circle.fill")
                            .font(.title2)
                            .imageScale(.medium)
                            .foregroundColor(.blue)
                        
                        Text("Enable Dark Mode")
                            .font(.subheadline)
                            .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                    }
                }
                .padding(.horizontal)
                .frame(height: 44)
                .background(rowBackgroundColor)
                .cornerRadius(10)
                .toggleStyle(SwitchToggleStyle(tint: .blue))
            } 
            .padding()
            
            VStack(alignment: .leading) {
                
                Text("Account")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                
                VStack {
                    Toggle(isOn: $notificationsEnabled) {
                        HStack {
                            Image(systemName: "bell.circle.fill")
                                .font(.title2)
                                .imageScale(.medium)
                                .foregroundColor(.blue)
                            
                            VStack(alignment: .leading) {
                                Text("Notifications")
                                    .font(.subheadline)
                                    .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                                
                                if notificationsEnabled {
                                    Text("Push notifications enabled")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                
                            }
                        }
                    }
                    .padding(.horizontal)
                    .frame(height: 44)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    
                    Divider()
                    
                    Toggle(isOn: $faceIdEnabled) {
                        HStack {
                            Image(systemName: "faceid")
                                .font(.title2)
                                .imageScale(.medium)
                                .foregroundColor(.blue)
                            
                            Text("Enable Face ID")
                                .font(.subheadline)
                                .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                        }
                    }
                    .padding(.horizontal)
                    .frame(height: 44)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                }
                .background(rowBackgroundColor)
                .cornerRadius(10)

            }
            .padding()
            
            Spacer()
        }
        .background(backgroundColor)
    }
}

struct ControlFlow_Previews: PreviewProvider {
    static var previews: some View {
        ControlFlow()
    }
}
