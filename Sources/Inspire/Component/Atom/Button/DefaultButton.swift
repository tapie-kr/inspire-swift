//
//  DefaultButton.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI


public struct DefaultButton: View {
    @State var isPressed: Bool = false
    
    let text: String
    let variant: DefaultButtonVariant
    let theme: DefaultButtonTheme
    let size: DefaultButtonSize
    let leadingIcon: IconName?
    let trailingIcon: IconName?
    let disabled: Bool
    let action: () -> Void
    
    public init(
        _ text: String,
        variant: DefaultButtonVariant = .primary,
        theme: DefaultButtonTheme = .monochrome,
        size: DefaultButtonSize = .large,
        leadingIcon: IconName? = nil,
        trailingIcon: IconName? = nil,
        disabled: Bool = false,
        action: @escaping () -> Void = {}
    ) {
        self.text = text
        self.variant = variant
        self.theme = theme
        self.size = size
        self.leadingIcon = leadingIcon
        self.trailingIcon = trailingIcon
        self.disabled = disabled
        self.action = action
    }
    
    private var foregroundColor: Color {
        disabled ? .content.disabled : theme.foregroundColor(for: variant)
    }
    
    private var backgroundColor: Color {
        theme.backgroundColor(for: variant)
    }
    
    private var defaultButtonView: some View {
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
    }
    
    public var body: some View {
        Button(action: action) {
            defaultButtonView
                .interaction(disabled: disabled, pressed: isPressed, inverted: variant.inverted)
                .background(backgroundColor)
                .radius(size.radius)
        }
        .pressedBindable(isPressed: $isPressed)
        .disabled(disabled)
    }
}

#Preview {
    VStack(spacing: 10) {
        HStack {
            DefaultButton("Button", leadingIcon: GlyphIcon.ADD_PHOTO_ALTERNATE, disabled: false, action: {})
            DefaultButton("Button", leadingIcon: GlyphIcon.ADD_PHOTO_ALTERNATE, disabled: true, action: {})
        }
        HStack {
            DefaultButton("Button", variant: .secondary, disabled: false)
            DefaultButton("Button", variant: .secondary, disabled: true)
        }
    }
}
