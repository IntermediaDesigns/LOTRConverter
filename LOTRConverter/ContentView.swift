//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false

    var body: some View {
        ZStack {
            // Background
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            // Top Section
            VStack {
                Image("prancingpony")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)

                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)

                HStack {
                    VStack {
                        HStack {
                            Image("gold")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)

                            Text("Gold")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        Text("This is text.")
                    }

                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)

                    VStack {
                        HStack {
                            Text("Silver")
                                .font(.headline)
                                .foregroundStyle(.white)

                            Image("silver")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        Text("This is text.")
                    }
                } // End of Top Section
                

                Spacer() // Spacer between top and bottom sections
                
                // Bottom Section
                
                // Info Button
                HStack {
                    Spacer()
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }  // End of Bottom Section

                
            } // Bottom of first VStack
            

            .border(.blue)  // Test edges
            .frame(width: UIScreen.main.bounds.width)
            
        } // End of ZStack
    }
}

#Preview {
    ContentView()
}
