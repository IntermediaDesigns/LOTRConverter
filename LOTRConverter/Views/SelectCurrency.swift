//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/9/25.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss  // Environment variable to dismiss the view
    @State private var selectedCurrencyFrom: Currency?
    @State private var selectedCurrencyTo: Currency?

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
                    ForEach(Currency.allCases) { currency in
                        if self.selectedCurrencyFrom == currency {

                            CurrencyIcon(currencyImage: currency.image)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 4)
                                        .opacity(0.7)
                                }
                        } else {
                            CurrencyIcon(currencyImage: currency.image)

                                // Add a tap gesture to each currency icon
                                .onTapGesture {
                                    self.selectedCurrencyFrom = currency
                                }
                        }
                    }
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
                    ForEach(Currency.allCases) { currency in
                        if self.selectedCurrencyTo == currency {

                            CurrencyIcon(currencyImage: currency.image)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 4)
                                        .opacity(0.7)
                                }
                        } else {
                            CurrencyIcon(currencyImage: currency.image)
                                // Add a tap gesture to each currency icon
                                .onTapGesture {
                                    self.selectedCurrencyTo = currency
                                }
                        }
                    }
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
