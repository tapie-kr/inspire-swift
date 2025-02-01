//
//  TAPIESymbol.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/1/25.
//

import SwiftUI

public struct TAPIESymbol: View {
    public enum Style {
        case grayscale, solid
    }
    
    public enum Size: CGFloat {
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
    
    let style: Style
    let size: Size
    let label: Bool
    
    public init(style: Style = .grayscale, size: Size, label: Bool = true) {
        self.style = style
        self.size = size
        self.label = label
    }

    
    public var body: some View {
        Image("Symbol/TAPIE/\(style == Style.grayscale ? "Grayscale" : "Solid")/\(label ? "" : "No")Label", bundle: .module)
            .resizable()
            .scaledToFit()
            .frame(height: size.rawValue)
    }
}

#Preview {
    TAPIESymbol(style: .solid, size: ._80, label: false)
}
