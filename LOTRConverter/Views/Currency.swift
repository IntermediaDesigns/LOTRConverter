//
//  Currency.swift
//  LOTRConverter
//
//  Created by Lynjai Jimenez on 4/9/25.
//

import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    
    case copperPenny = 6400
    case silverPenny = 64
    case goldPenny = 4
    case silverPiece = 16
    case goldPiece = 1
    
    var id: Currency { self }
    
    var image: ImageResource {
        switch self {
        case .copperPenny:
            return .copper
        case .silverPenny:
            return .silver
        case .goldPenny:
            return .gold
        case .silverPiece:
            return .silverpiece
        case .goldPiece:
            return .goldpiece
        }
    }
}

