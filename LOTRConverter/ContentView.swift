//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false  // State variable to control the display of the info view
    @State var leftCurrencyAmount = ""  // State variable for the left currency amount text field
    @State var rightCurrencyAmount = ""  // State variable for the right currency amount text field

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
                                .frame(height: 100)
                        }
                        // Text field for left currency amount
                        TextField("Enter amount", text: $leftCurrencyAmount)
                            .textFieldStyle(.roundedBorder)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .keyboardType(.decimalPad)
                            .padding(.vertical, 10)
                    } // End of HStack
                    // Centered equal sign
                
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)

                    VStack {
                        HStack {
                            Image("silver")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                        }
                        // Text field for right currency amount
                        TextField("Enter amount", text: $rightCurrencyAmount)
                            .textFieldStyle(.roundedBorder)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.trailing)
                            .padding(.vertical, 10)
                    } // End of HStack
                } // End of Top Section
                .padding(.horizontal)
                .padding(.vertical, 25)
                .background(.black.opacity(0.7))
                .cornerRadius(40)
                

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
            .padding(.horizontal, 7)
            .frame(width: UIScreen.main.bounds.width)
          
            
        } // End of ZStack
    }
}

#Preview {
    ContentView()
}
