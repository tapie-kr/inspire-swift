//
//  INSPIRESymbol.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/1/25.
//

import SwiftUI

public struct INSPIRESymbol: View {
    public enum Size: CGFloat {
        case _128 = 128
        case _96 = 96
        case _80 = 80
        case _72 = 72
        case _56 = 56
        case _48 = 48
        case _32 = 32
        case _24 = 24
        case _20 = 20
        case _16 = 16
        case _8 = 8
    }
    
    let size: Size

    
    public var body: some View {
        Image("Symbol/INSPIRE", bundle: .module)
            .resizable()
            .scaledToFit()
            .frame(height: size.rawValue)
    }
}

#Preview {
    INSPIRESymbol(size: ._128)
}
