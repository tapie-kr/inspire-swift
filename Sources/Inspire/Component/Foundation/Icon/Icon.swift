//
//  SwiftUIView.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public struct Icon: View {
    let name: IconName
    let size: CGFloat
    let color: Color
    let action: (() -> Void)?
        
    public init(
        name: IconName = GlyphIcon.DEFAULT,
        size: CGFloat = 20,
        color: Color = .content.emphasized,
        action: (() -> Void)? = nil
    ) {
        self.name = name
        self.size = size
        self.color = color
        self.action = action
    }
    
    private var imageName: String {
        if name is GlyphIcon {
            return "Icon/Glyph/\(name.rawValue)"
        } else {
            return "Icon/Brand/\(name.rawValue)"
        }
    }
    
    private var iconView: some View {
        Image(imageName, bundle: .module)
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .foregroundStyle(color)
    }
    
    public var body: some View {
        iconView
            .onTapGesture {
                if let action {
                    action()
                }
            }
    }
}

#Preview {
    VStack(spacing: 8) {
        Icon(name: GlyphIcon.ADD, size: 32, color: .content.default)
        Icon(name: BrandIcon.DISCORD, size: 32, color: .solid.blue, action: {
            print("Discord")
        })
    }
}
