//
//  IconButton.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI


public struct IconButton: View {
    let name: IconName
    let size: IconButtonSize
    let variant: IconButtonVariant
    let theme: IconButtonTheme
    let action: () -> Void
    
    public init(
        name: IconName,
        size: IconButtonSize = .large,
        variant: IconButtonVariant = .primary,
        theme: IconButtonTheme = .monochrome,
        action: @escaping () -> Void = {}
    ) {
        self.name = name
        self.size = size
        self.variant = variant
        self.theme = theme
        self.action = action
    }
    
    private var foregroundColor: Color {
        theme.foregroundColor(for: variant)
    }
    
    private var backgroundColor: Color {
        theme.backgroundColor(for: variant)
    }
    
    public var body: some View {
        Button(action: action) {
            Icon(name: name, size: size.iconSize, color: foregroundColor)
                .padding(size.padding)
                .background(backgroundColor)
                .radius(size.radius)
        }
    }
}

#Preview {
    VStack(spacing: 10) {
        IconButton(name: GlyphIcon.ADD)
        IconButton(name: BrandIcon.TAPIE, size: .small, variant: .secondary, theme: .blue)
    }
}
