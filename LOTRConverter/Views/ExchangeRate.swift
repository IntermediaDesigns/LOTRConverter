//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/9/25.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let rightImage: ImageResource
    let text: String

    var body: some View {
        VStack {
            HStack {
                // Left currency image
                Image(leftImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .padding(.horizontal, 5)

                Spacer()
                
                // Exchange rate text
                Text(text)
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)

                Spacer()
                // Right currency image
                Image(rightImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .padding(.horizontal, 5)
            }  // End of HStack
        }  // End of VStack
        .padding(.vertical, 5)
        .padding(.horizontal, 5)
    }
}

#Preview {
    ExchangeRate(
        leftImage: .gpiece,
        rightImage: .goldpenny,
        text: "1 Gold Piece = 4 Gold Pennies"
    )
}
