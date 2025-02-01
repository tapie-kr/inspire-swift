//
//  SwiftUIView.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

struct Icon: View {
    let name: IconName
    let size: CGFloat
    let color: Color
    
    init(name: IconName, size: CGFloat = 20, color: Color = .content.emphasized) {
        self.name = name
        self.size = size
        self.color = color
    }
    
    private var imageName: String {
        if name is GlyphIcon {
            return "Icon/Glyph/\(name.rawValue)"
        } else {
            return "Icon/Brand/\(name.rawValue)"
        }
    }
    
    var body: some View {
        Image(imageName, bundle: .module)
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .foregroundStyle(color)
    }
}

#Preview {
    VStack(spacing: 8) {
        Icon(name: GlyphIcon.ADD, size: 32, color: .content.default)
        Icon(name: BrandIcon.DISCORD, size: 32, color: .solid.blue)
    }
}
