//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false  // State variable to control the display of the info view
    @State var showSelectCurrency = false  // State variable to control the display of the SelectCurrency view

    @State var leftCurrencyAmount = ""  // State variable for the left currency amount text field
    @State var rightCurrencyAmount = ""  // State variable for the right currency amount text field

    @State var leftCurrency = Currency.copperPenny  // State variable for the selected left currency
    @State var rightCurrency = Currency.silverPenny  // State variable for the selected right currency

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
                            Image(leftCurrency.image)  // selectedCurrencyFrom currency image from SelectCurrency
                                .resizable()
                                .scaledToFit()
                                .frame(height: 120)
                        }
                        // Add tap gesture to the image
                        .onTapGesture {
                            // Handle tap gesture to select currency
                            showSelectCurrency.toggle()  // Show the SelectCurrency view
                        }

                        // Text field for left currency amount
                        TextField("Enter amount", text: $leftCurrencyAmount)
                            .textFieldStyle(.roundedBorder)
                            .cornerRadius(5)
                            .padding(.horizontal)
                            .keyboardType(.decimalPad)
                            .padding(.vertical, 10)
                    }  // End of HStack
                    // Centered equal sign

                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)

                    VStack {
                        HStack {
                            Image(rightCurrency.image)  // selectedCurrencyTo currency image from SelectCurrency
                                .resizable()
                                .scaledToFit()
                                .frame(height: 120)
                        }
                        // Add tap gesture to the image
                        .onTapGesture {
                            // Handle tap gesture to select currency
                            showSelectCurrency.toggle()  // Show the SelectCurrency view
                        }

                        // Text field for right currency amount
                        TextField("Enter amount", text: $rightCurrencyAmount)
                            .textFieldStyle(.roundedBorder)
                            .cornerRadius(5)
                            .padding(.horizontal)
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.trailing)
                            .padding(.vertical, 10)
                    }  // End of HStack
                }  // End of Top Section
                .padding(.horizontal)
                .padding(.vertical, 25)
                .background(.black.opacity(0.7))
                .cornerRadius(10)

                Spacer()  // Spacer between top and bottom sections

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
                    .sheet(isPresented: $showExchangeInfo) {
                        ExchangeInfo()
                    }
                }  // End of Bottom Section
            }  // Bottom of first VStack
            .padding(.horizontal, 7)
            .frame(width: UIScreen.main.bounds.width)
        }  // End of ZStack

        .sheet(isPresented: $showSelectCurrency) {
            SelectCurrency(
                leftSelectedCurrency: $leftCurrency,
                rightSelectedCurrency: $rightCurrency
            )
        }
    }
}

#Preview {
    ContentView()
}
