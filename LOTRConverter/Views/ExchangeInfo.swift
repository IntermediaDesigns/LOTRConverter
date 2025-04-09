//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/9/25.
//

import SwiftUI

struct ExchangeInfo: View {
    @State var exitInfo = false  // State variable to control the display of the info view
    var body: some View {
        ZStack {
            // Background
            Image("parchment")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack {
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .foregroundStyle(.black)

                //Description text
                Text(
                    "Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one.  We used to take Brandy Bucks, but after finding out that it was a person instead of a currency, we stopped.  We are happy to take any other currency though. Below are the current exchange rates we accept."
                )
                .font(.headline)
                .foregroundStyle(.black)
                .multilineTextAlignment(.center)
                .padding(.vertical, 20)
                .padding(.horizontal, 20)

                // Exchange rates
                VStack {
                    //First Row
                    HStack {
                        // Left currency image
                        Image("gpiece")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)

                        Spacer()
                        // Exchange rate text
                        Text("1 Gold Piece = 4 Gold Pennies")

                        Spacer()
                        // Right currency image
                        Image("goldpenny")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)

                    }  // End of HStack

                    //Second Row
                    HStack {
                        // Left currency image
                        Image("goldpenny")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                        Spacer()
                        // Exchange rate text
                        Text("1 Gold Penny = 4 Silver Pieces")

                        Spacer()
                        // Right currency image
                        Image("silverpenny")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                    }  // End of HStack

                    // Third Row
                    HStack {
                        // Left currency image
                        Image("spiece")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                        Spacer()
                        // Exchange rate text
                        Text("1 Silver Piece = 4 Silver Pennies")

                        Spacer()
                        // Right currency image
                        Image("silverpenny")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                    }  // End of HStack

                    // Fourth Row
                    HStack {
                        // Left currency image
                        Image("silverpenny")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)

                        Spacer()
                        // Exchange rate text
                        Text("1 Silver Penny = 100 Copper Pennies")
                        Spacer()
                        // Right currency image
                        Image("copperpenny")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)

                    }  // End of HStack
                }  // End of VStack
                .padding(.horizontal, 7)

                Spacer()
                // Done button
                Button {
                    exitInfo.toggle()

                } label: {
                    ZStack {
                        Image("background")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 60)
                            .cornerRadius(10)

                        Text("Done")
                            .font(.title)
                            .foregroundStyle(.white)
                            .padding()
                            .cornerRadius(10)
                    }

                }
                .shadow(color: .black, radius: 4, x: 0, y: 0)

                Spacer()

            }  // End of VStack
            .padding(.vertical, 25)
            .padding(.horizontal, 7)
            .frame(width: UIScreen.main.bounds.width)
            .foregroundStyle(.black)
        }  // End of ZStack
        .background(.black)
    }
}

#Preview {
    ExchangeInfo()
}
