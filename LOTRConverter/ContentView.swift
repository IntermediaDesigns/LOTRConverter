//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/8/25.
//

import SwiftUI

struct ContentView: View {
    
    let showExchangeInfo = false
    
    
    var body: some View {
        ZStack {
            // Background image and fill entire screen
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                
            // Main content
            VStack {

                // Prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)

                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)

                // Conversion section
                HStack {
                    // Left conversion section
                    VStack {
                        // Currency
                        HStack {
                            // Currency icon
                            Image(.gold)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)

                            // Currency text
                            Text("Gold")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        // Text field
                        Text("This is text")
                            
                    }

                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)

                    // Right conversion section
                    VStack {
                        // Currency
                        HStack {
                            // Currency text
                            Text("Silver")
                                .font(.headline)
                                .foregroundStyle(.white)

                            // Currency icon
                            Image(.silver)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                        }
                        // Text field
                        Text("This is text")
                    }

                }
                
                Spacer()
                    

                // Info button
                Button {
                    // Action for info button
                    
                } label: {
                    Image(systemName: "info.circle.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                        .shadow(color: .black.opacity(0.7), radius: 10, x: 0, y: 0)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
