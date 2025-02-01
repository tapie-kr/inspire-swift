//
//  SwiftUIView.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI


public struct DefaultButton: View {
    let text: String
    let variant: ButtonVariant
    let theme: ButtonTheme
    let size: ButtonSize
    let leadingIcon: IconName?
    let trailingIcon: IconName?
    let action: () -> Void
    
    public init(
        _ text: String,
        variant: ButtonVariant = .primary,
        theme: ButtonTheme = .monochrome,
        size: ButtonSize = .large,
        leadingIcon: IconName? = nil,
        trailingIcon: IconName? = nil,
        action: @escaping () -> Void = {}
    ) {
        self.text = text
        self.variant = variant
        self.theme = theme
        self.size = size
        self.leadingIcon = leadingIcon
        self.trailingIcon = trailingIcon
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
            HStack(spacing: size.spacing) {
                if let leadingIcon {
                    Icon(name: leadingIcon, size: size.iconSize, color: foregroundColor)
                }
                Typo(text, size: size.fontSize, weight: size.fontWeight, color: foregroundColor)
                if let trailingIcon {
                    Icon(name: trailingIcon, size: size.iconSize, color: foregroundColor)
                }
            }
            .padding(.horizontal, size.paddingHorizontal)
            .padding(.vertical, size.paddingVertical)
            .background(backgroundColor)
            .radius(size.radius)
        }
    }
}

#Preview {
    VStack(spacing: 10) {
        DefaultButton("Button", leadingIcon: GlyphIcon.ADD_PHOTO_ALTERNATE, action: {})
        DefaultButton("Button", variant: .secondary, theme: .red)
    }
}
