//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/9/25.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss  // Environment variable to dismiss the view

    var body: some View {
        ZStack {
            // background
            Image("parchment")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .background(.black)

            VStack {
                // text
                Text("Select the Currency to convert from:")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding(.bottom, 20)

                //currency image
                LazyVGrid(
                    columns: [GridItem(), GridItem(), GridItem()],
                    spacing: 10
                ) {
                    ForEach(0..<5) { _ in
                        CurrencyIcon(currencyImage: .copper)

                    }
                    //                    CurrencyIcon(currencyImage: .copper)
                    //                    CurrencyIcon(currencyImage: .gold)
                    //                    CurrencyIcon(currencyImage: .silver)
                    //                    CurrencyIcon(currencyImage: .goldpiece)
                    //                    CurrencyIcon(currencyImage: .silverpiece)
                }

                Spacer()

                // text
                Text("Select the Currency to convert to:")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding(.bottom, 20)

                // currency image
                LazyVGrid(
                    columns: [GridItem(), GridItem(), GridItem()],
                    spacing: 10
                ) {
//                    ForEach(0..<5) { _ in
//
//                    }
                    //                    CurrencyIcon(currencyImage: .copper)
                    //                    CurrencyIcon(currencyImage: .gold)
                    //                    CurrencyIcon(currencyImage: .silver)
                    //                    CurrencyIcon(currencyImage: .goldpiece)
                    //                    CurrencyIcon(currencyImage: .silverpiece)
                }

                Spacer()
                // done button
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
                .padding(.bottom, 20)
            }  // End of VStack
            .padding(.top, 20)
            .padding(.horizontal, 25)
            .frame(width: UIScreen.main.bounds.width)

        }  // End of ZStack
        .multilineTextAlignment(.center)

    }
}

#Preview {
    SelectCurrency()
}
