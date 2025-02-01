//
//  SwiftUIView.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/1/25.
//

import SwiftUI

public struct TAPIESymbol: View {
    public enum Style {
        case grayscale, solid
    }
    
    public enum Size {
        case _96, _80, _72, _56, _48, _32, _24, _20, _16, _8
        
        public var value: CGFloat {
            switch self {
            case ._96: return 96
            case ._80: return 80
            case ._72: return 72
            case ._56: return 56
            case ._48: return 48
            case ._32: return 32
            case ._24: return 24
            case ._20: return 20
            case ._16: return 16
            case ._8:  return 8
            }
        }
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
            .frame(height: size.value)
    }
}

#Preview {
    TAPIESymbol(style: .solid, size: ._96, label: false)
}
