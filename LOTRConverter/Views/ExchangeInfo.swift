//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/9/25.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss  // Environment variable to dismiss the view
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
                ExchangeRate(leftImage: .gpiece, rightImage: .goldpenny, text: "1 Gold Piece = 4 Gold Pennies")
                
                ExchangeRate(leftImage: .goldpenny, rightImage: .spiece, text: "1 Gold Penny = 4 Silver Pieces")
                
                ExchangeRate(leftImage: .spiece, rightImage: .silverpenny, text: "1 Silver Penny = 4 Silver Pennies")
                
                ExchangeRate(leftImage: .silverpenny, rightImage: .copperpenny, text: "1 Silver Penny = 100 Copper Pennies")

                Spacer()
                // Done button
                Button {
                    dismiss()  // Dismiss the view when the button is pressed

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

