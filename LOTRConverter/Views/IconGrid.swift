//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/9/25.
//

import SwiftUI

struct IconGrid: View {
    @Binding var currency: Currency

    var body: some View {

        //currency image
        LazyVGrid(
            columns: [GridItem(), GridItem(), GridItem()],
            spacing: 10
        ) {
            ForEach(Currency.allCases) { currency in
                if self.currency == currency {

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
                            self.currency = currency
                        }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var currency: Currency = .copperPenny
    IconGrid(currency: $currency)
}
