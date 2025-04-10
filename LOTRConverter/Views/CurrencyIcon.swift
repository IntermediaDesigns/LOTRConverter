//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/9/25.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    
    var body: some View {
        ZStack(alignment: .bottom) {
                Image(currencyImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 4, x: 0, y: 0)
        }
        .padding(3)
        
    }
}

#Preview {
    CurrencyIcon(currencyImage: .copper)
    CurrencyIcon(currencyImage: .gold)
    CurrencyIcon(currencyImage: .silver)
    CurrencyIcon(currencyImage: .goldpiece)
    CurrencyIcon(currencyImage: .silverpiece)
}
