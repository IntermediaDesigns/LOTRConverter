//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/9/25.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss  // Environment variable to dismiss the view
    @Binding var leftSelectedCurrency: Currency
    @Binding var rightSelectedCurrency: Currency


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
                    .foregroundStyle(.black)

                IconGrid(currency: $leftSelectedCurrency)

                Spacer()

                // text
                Text("Select the Currency to convert to:")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding(.bottom, 20)
                    .foregroundStyle(.black)

                IconGrid(currency: $rightSelectedCurrency)

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
            .padding(.top, 40)
            .padding(.horizontal, 25)
            .frame(width: UIScreen.main.bounds.width)

        }  // End of ZStack
        .multilineTextAlignment(.center)

    }
}

#Preview {
    @Previewable @State var leftSelectedCurrency: Currency = .copperPenny
    @Previewable @State var rightSelectedCurrency: Currency = .goldPenny
    SelectCurrency(leftSelectedCurrency: $rightSelectedCurrency, rightSelectedCurrency: $leftSelectedCurrency)
}
