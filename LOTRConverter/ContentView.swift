//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack {
            // Background image and fill entire screen
            Image("background")
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            // Main content
            VStack {

                // Prancing pony image

                // Currency exchange text

                // Conversion section
                HStack {
                    // Left conversion section
                    VStack {
                        // Currency
                        HStack {
                            // Currency icon

                            // Currency text
                        }
                        // Text field

                    }

                    // Equal sign

                    // Right conversion section
                    VStack {
                        // Currency
                        HStack {
                            // Currency text

                            // Currency icon
                        }
                        // Text field

                    }

                }

                // Info button
            }
        }

        .padding()
    }
}

#Preview {
    ContentView()
}
